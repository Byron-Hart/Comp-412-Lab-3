import math
import sys
import time 

class IRnode:
    def __init__(self, data):
        global lineNum
        self.data = data
        self.next = None
        self.prev = None
        self.lineNum = lineNum
    
    def __str__(self):
        printIR(self)
        return ""

class ScheduleNode:
    def __init__(self, num, ilocType, vr1, vr2, vr3):
        self.num = num
        self.ilocType = ilocType
        self.vr1 = vr1
        self.vr2 = vr2
        self.vr3 = vr3
        self.descendants = set()
        self.latencyToRoot = 0
        self.priority = 0
        self.children = []
        self.edges = []
        
    def __str__(self):
        return str(self.num)

def insertIR(data):
    global irHead
    
    node = IRnode(data)
    
    if irHead == None:
        irHead = node
        irHead.next = irHead
        irHead.prev = irHead
    else:
        headPrev = irHead.prev
        headPrev.next = node
        node.prev = headPrev
        irHead.prev = node
        node.next = irHead
        
def scan():
    global line, lineNum, charNum, nextline
    #Check for EOF
    if len(line) == 0:
        return ((9, 0))

    c = line[charNum]

    #Get rid of whitespace
    if c == " " or c == "\t":
        charNum += 1
        c = line[charNum]
        while c == " " or c == "\t":
            charNum += 1   
            c = line[charNum]

    #Check for comment
    if c == "/":
        charNum += 1
        c = line[charNum]
        if c == "/":
            charNum += 1
            c = line[charNum]
            if line[-1] == "\n":
                return((10, 0))
            else:
                return((9, 0))
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. / not followed by /.")

    #Check for load, loadI, lshift
    elif c == "l":
        charNum += 1
        c = line[charNum]
        if c == "o":
            charNum += 1
            c = line[charNum]
            if c == "a":
                charNum += 1
                c = line[charNum]
                if c == "d":
                    charNum += 1
                    c = line[charNum]
                    if c == "I":
                        charNum += 1
                        return((1, 0))
                    else:
                        return((0, 0))
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. loa not followed by d or dI.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. lo not followed by a.")                
        elif c == "s":
            charNum += 1
            c = line[charNum]
            if c == "h":
                charNum += 1
                c = line[charNum]
                if c == "i":
                    charNum += 1
                    c = line[charNum]
                    if c == "f":
                        charNum += 1
                        c = line[charNum]
                        if c == "t":
                            charNum += 1
                            return((2, 3))
                        else:
                            return print_lexical_error(lineNum, "Invalid ILOC. lshif not followed by t.")                
                    else:
                        return print_lexical_error(lineNum, "Invalid ILOC. lshi not followed by f.")                
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. lsh not followed by i.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. ls not followed by h.")
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. l not followed by o or s.")


    #Check for store, sub
    elif c == "s":
        charNum += 1
        c = line[charNum]
        if c == "u":
            charNum += 1
            c = line[charNum]
            if c == "b":
                charNum += 1
                return((2, 1))
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. su not followed by b.")                
        elif c == "t":
            charNum += 1
            c = line[charNum]
            if c == "o":
                charNum += 1
                c = line[charNum]
                if c == "r":
                    charNum += 1
                    c = line[charNum]
                    if c == "e":
                        charNum += 1
                        return((0, 1))
                    else:
                        return print_lexical_error(lineNum, "Invalid ILOC. stor not followed by e.")                
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. sto not followed by r.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. st not followed by o.")
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. s not followed by u or t.")

    #Check for add
    elif c == "a":
        charNum += 1
        c = line[charNum]
        if c == "d":
            charNum += 1
            c = line[charNum]
            if c == "d":
                charNum += 1
                return((2, 0))
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. ad not followed by d.")                
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. a not followed by d.")

    #Check for mult
    elif c == "m":
        charNum += 1
        c = line[charNum]
        if c == "u":
            charNum += 1
            c = line[charNum]
            if c == "l":
                charNum += 1
                c = line[charNum]
                if c == "t":
                    charNum += 1
                    return((2, 2))
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. mul not followed by t.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. mu not followed by l.")                
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. m not followed by u.")
    
    #Check for rshift or register
    elif c == "r":
        charNum += 1
        c = line[charNum]
        if c == "s":
            charNum += 1
            c = line[charNum]
            if c == "h":
                charNum += 1
                c = line[charNum]
                if c == "i":
                    charNum += 1
                    c = line[charNum]
                    if c == "f":
                        charNum += 1
                        c = line[charNum]
                        if c == "t":
                            charNum += 1
                            return ((2,4))
                        else:
                            return print_lexical_error(lineNum, "Invalid ILOC. rshif not followed by t.") 
                    else:
                        return print_lexical_error(lineNum, "Invalid ILOC. rshi not followed by f.")                
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. rsh not followed by i.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. rs not followed by h.")                
        elif c >= "0" and c <= "9":
            n = int(c)
            charNum += 1
            c = line[charNum]
            while c >= "0" and c <= "9":
                n = n * 10 + int(c)
                charNum += 1
                c = line[charNum]
            return ((6, n))
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. r not followed by s or constant.")                
    
    #Check for output
    elif c == "o":
        charNum += 1
        c = line[charNum]
        if c == "u":
            charNum += 1
            c = line[charNum]
            if c == "t":
                charNum += 1
                c = line[charNum]
                if c == "p":
                    charNum += 1
                    c = line[charNum]
                    if c == "u":
                        charNum += 1
                        c = line[charNum]
                        if c == "t":
                            charNum += 1
                            return ((3,0))
                        else:
                            return print_lexical_error(lineNum, "Invalid ILOC. outpu not followed by t.") 
                    else:
                        return print_lexical_error(lineNum, "Invalid ILOC. outp not followed by u.")                
                else:
                    return print_lexical_error(lineNum, "Invalid ILOC. out not followed by p.")                
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. ou not followed by t.")                
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. o not followed by u.")                


    #Check for nop
    elif c == "n":
        charNum += 1
        c = line[charNum]
        if c == "o":
            charNum += 1
            c = line[charNum]
            if c == "p":
                charNum += 1
                return((4, 0))
            else:
                return print_lexical_error(lineNum, "Invalid ILOC. no not followed by p.")                
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. n not followed by o.")
        
    #Check for constant
    elif c >= "0" and c <= "9":
        n = int(c)
        charNum += 1
        c = line[charNum]
        while c >= "0" and c <= "9":
            n = n * 10 + int(c)
            charNum += 1
            c = line[charNum]
        return ((5, n))

    #Check for comma
    elif c == ",":
        charNum += 1
        return((7, 0))
    
    #Check for =>
    elif c == "=":
        charNum += 1
        c = line[charNum]
        if c == ">":
            charNum += 1
            return((8, 0))
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. = not followed by >.")
    
    #Check for EOL
    elif c == "\n":
        return((10, 0))
    elif c == "\r":
        charNum += 1
        if c == "\n":
            return((10, 0))
        else:
            return print_lexical_error(lineNum, "Invalid ILOC. \r not followed by \n.")

    else:
        return print_lexical_error(lineNum, "Text is not detectable ILOC.")

def getNextToken():
    global ilocFile, lineNum, charNum, line, fakeEOL
    token = scan()
    if token[0] == 10 and fakeEOL:
        return((9, 0))
    if token[0] == 10 or token[0] == 11:
        line = ilocFile.readline()
        lineNum += 1
        charNum = 0
        if len(line) != 0 and line[-1] != "\n":
            line = line + "\n"
            fakeEOL = True
    return token
    
def parse():
    global lineNum
    token = 0
    while token != (9, 0):
        token = getNextToken()
        data = [token, None, None, None, None, None, None, None, None, None, None, None, None]
        #MEMOP, REG, INTO, REG, EOL
        if token[0] == 0:
            token = getNextToken()
            if token[0] == 6:
                data[1] = token[1]
                token = getNextToken()
                if token[0] == 8:
                    token = getNextToken()
                    if token[0] == 6:
                        data[9] = token[1]
                        token = getNextToken()
                        if token[0] == 10:
                            insertIR(data)
                        elif token[0] != 11:
                            print_syntax_error(lineNum, "MEMOP REG INTO REG not followed by EOL.")
                    elif token[0] != 11:
                        print_syntax_error(lineNum, "MEMOP REG INTO not followed by REG.")
                elif token[0] != 11:
                    print_syntax_error(lineNum, "MEMOP REG not followed by INTO.")
            elif token[0] != 11:
                print_syntax_error(lineNum, "MEMOP not followed by REG.")

        #LOADI, CONSTANT, INTO, REG, EOL
        elif token[0] == 1:
            token = getNextToken()
            if token[0] == 5:
                data[1] = token[1]
                token = getNextToken()
                if token[0] == 8:
                    token = getNextToken()
                    if token[0] == 6:
                        data[9] = token[1]
                        token = getNextToken()
                        if token[0] == 10:
                            insertIR(data)
                        elif token[0] != 11:
                            print_syntax_error(lineNum, "LOADI CONSTANT INTO REG not followed by EOL.")
                    elif token[0] != 11:
                        print_syntax_error(lineNum, "LOADI CONSTANT INTO not followed by REG.")
                elif token[0] != 11:
                    print_syntax_error(lineNum, "LOADI CONSTANT not followed by INTO.")
            elif token[0] != 11:
                print_syntax_error(lineNum, "LOADI not followed by CONSTANT.")

        #ARITHOP, REG, COMMA, REG, INTO, REG, EOL
        elif token[0] == 2:
            token = getNextToken()
            if token[0] == 6:
                data[1] = token[1]
                token = getNextToken()
                if token[0] == 7:
                    token = getNextToken()
                    if token[0] == 6:
                        data[5] = token[1]
                        token = getNextToken()
                        if token[0] == 8:
                            token = getNextToken()
                            if token[0] == 6:
                                data[9] = token[1]
                                token = getNextToken()
                                if token[0] == 10:
                                    insertIR(data)
                                elif token[0] != 11:
                                    print_syntax_error(lineNum, "ARITHOP REG COMMA REG INTO REG not followed by EOL.")
                            elif token[0] != 11:
                                print_syntax_error(lineNum, "ARITHOP REG COMMA REG INTO not followed by REG.")
                        elif token[0] != 11:
                            print_syntax_error(lineNum, "ARITHOP REG COMMA REG not followed by INTO.")
                    elif token[0] != 11:
                        print_syntax_error(lineNum, "ARITHOP REG COMMA not followed by REG.")
                elif token[0] != 11:
                    print_syntax_error(lineNum, "ARITHOP REG not followed by COMMA.")
            elif token[0] != 11:
                print_syntax_error(lineNum, "ARITHOP not followed by REG.")

        #OUTPUT, CONSTANT, EOL
        elif token[0] == 3:
            token = getNextToken()
            if token[0] == 5:
                data[1] = token[1]
                token = getNextToken()
                if token[0] == 10:
                    insertIR(data)
                elif token[0] != 11:
                    print_syntax_error(lineNum, "OUTPUT CONSTANT not followed by EOL.")
            elif token[0] != 11:
                print_syntax_error(lineNum, "OUTPUT not followed by CONSTANT.")

        #NOP, EOL
        elif token[0] == 4:
            token = getNextToken()
            if token[0] == 10:
                #TODO: Remove nops?
                insertIR(data)
            elif token[0] != 11:
                print_syntax_error(lineNum, "NOP not followed by EOL.")

        #EOF
        elif token[0] == 9:
            insertIR(data)

        #EOL, EOF, or ERROR
        elif token[0] == 10 or token[0] == 11:
            continue

        else:
            print_syntax_error(lineNum, "Sentence start is not MEMOP, LOADI, ARITHOP, OUTPUT, NOP, or EOF.")

def printIR(data):
    if data[0][0] == 0:  
        if data[0][1] == 0:
            print("LOAD r%i INTO r%i" % (data[1], data[9]))
        else:
            print("STORE r%i INTO r%i" % (data[1], data[9]))
    elif data[0][0] == 1:  
        print("LOADI %i INTO r%i" % (data[1], data[9]))
    elif data[0][0] == 2:          
        if data[0][1] == 0:  
            print("ADD r%i , r%i INTO r%i" % (data[1], data[5], data[9]))
        elif data[0][1] == 1:        
            print("SUB r%i , r%i INTO r%i" % (data[1], data[5], data[9]))
        elif data[0][1] == 2:        
            print("MULT r%i , r%i INTO r%i" % (data[1], data[5], data[9]))
        elif data[0][1] == 3:        
            print("LSHIFT r%i , r%i INTO r%i" % (data[1], data[5], data[9]))
        else:        
            print("RSHIFT r%i , r%i INTO r%i" % (data[1], data[5], data[9]))
    elif data[0][0] == 3:
        print("OUTPUT %i" % data[1])          
    elif data[0][0] == 4:
        print("NOP")          
    else:
        print("EOF")

def rename():
    global maxVR, maxLive
    maxRegister = 0
    idx = 0 
    
    currNode = irHead
    while currNode.data[0][0] != 9:
        idx += 1
        if currNode.data[1] and currNode.data[0][0] != 1 and currNode.data[0][0] != 3 and currNode.data[1] > maxRegister:
            maxRegister = currNode.data[1]
        if currNode.data[5] and currNode.data[5] > maxRegister:
            maxRegister = currNode.data[5]
        if currNode.data[9] and currNode.data[9] > maxRegister:
            maxRegister = currNode.data[9]
        currNode = currNode.next
    
    SRtoVR = [None] * (maxRegister + 1)
    LU = [math.inf] * (maxRegister + 1)
    VRName = 0
    live = 0
    
    currNode = irHead.prev.prev
    while currNode.data[0][0] != 9:
        #Load
        if currNode.data[0] == (0,0):
            #Defines
            if SRtoVR[currNode.data[9]] is None:
                SRtoVR[currNode.data[9]] = VRName
                VRName += 1
            else:
                live -= 1
            currNode.data[10] = SRtoVR[currNode.data[9]]
            currNode.data[12] = LU[currNode.data[9]]
            
            SRtoVR[currNode.data[9]] = None
            LU[currNode.data[9]] = math.inf
            
            #Uses                
            if SRtoVR[currNode.data[1]] is None:
                SRtoVR[currNode.data[1]] = VRName
                VRName += 1
                live += 1
            currNode.data[2] = SRtoVR[currNode.data[1]]
            currNode.data[4] = LU[currNode.data[1]]

            LU[currNode.data[1]] = idx

        #Store
        if currNode.data[0] == (0,1):
            #Uses
            if SRtoVR[currNode.data[1]] is None:
                SRtoVR[currNode.data[1]] = VRName
                VRName += 1
                live += 1
            currNode.data[2] = SRtoVR[currNode.data[1]]
            currNode.data[4] = LU[currNode.data[1]]

            if SRtoVR[currNode.data[9]] is None:
                SRtoVR[currNode.data[9]] = VRName
                VRName += 1
                live += 1
            currNode.data[10] = SRtoVR[currNode.data[9]]
            currNode.data[12] = LU[currNode.data[9]]
            
            LU[currNode.data[1]] = idx
            LU[currNode.data[9]] = idx

        #LoadI
        if currNode.data[0][0] == 1:
            #Defines
            if SRtoVR[currNode.data[9]] is None:
                SRtoVR[currNode.data[9]] = VRName
                VRName += 1
            else:
                live -= 1
            currNode.data[10] = SRtoVR[currNode.data[9]]
            currNode.data[12] = LU[currNode.data[9]]
            
            SRtoVR[currNode.data[9]] = None
            LU[currNode.data[9]] = math.inf
            
            #NEW, for dependence ease
            currNode.data[2] = currNode.data[1]

        #Arithop
        if currNode.data[0][0] == 2: 
            #Defines
            if SRtoVR[currNode.data[9]] is None:
                SRtoVR[currNode.data[9]] = VRName
                VRName += 1
            else:
                live -= 1
            currNode.data[10] = SRtoVR[currNode.data[9]]
            currNode.data[12] = LU[currNode.data[9]]
            
            SRtoVR[currNode.data[9]] = None
            LU[currNode.data[9]] = math.inf
                
            #Uses
            if SRtoVR[currNode.data[1]] is None:
                SRtoVR[currNode.data[1]] = VRName
                VRName += 1 
                live += 1
            currNode.data[2] = SRtoVR[currNode.data[1]]
            currNode.data[4] = LU[currNode.data[1]]

            LU[currNode.data[1]] = idx
            
            if SRtoVR[currNode.data[5]] is None:
                SRtoVR[currNode.data[5]] = VRName
                VRName += 1
                live += 1
            currNode.data[6] = SRtoVR[currNode.data[5]]
            currNode.data[8] = LU[currNode.data[5]]
            
            LU[currNode.data[5]] = idx
            
        #NEW, for dependence ease
        #Output
        if currNode.data[0][0] == 3:
            currNode.data[2] = currNode.data[1]

            
        idx -= 1
        currNode = currNode.prev
        if live > maxLive:
            maxLive = live
        
    maxVR = VRName

def dependence():
    global nodes
    
    start = time.time()
    dependencemap = {}
    cycle = 1
    
    #Format = (index, type, vr1, vr2, vr3, visited, descendants, edges)
    nodes = []
    
    #Format = (x, y, z), where x = -1 means conflict edge, x = -2 means 
    #serialization edge, and 0+ means a data edge where the number is the dependent register
    #y and z are the 2 nodes of the edges
    edges = []    
    
    #For serialization and conflict edges
    allLoads = []
    allOutputs = []
    recentOutput = None
    recentStore = None
    
    currNode = irHead
    while currNode.data[0][0] != 9:
        #Make node
        #If eliminates NOPs
        if currNode.data[0][0] >= 0 and currNode.data[0][0] <= 3:
            node = ScheduleNode(cycle, currNode.data[0], currNode.data[2], currNode.data[6], currNode.data[10])
            
            #Load
            if currNode.data[0] == (0,0):
                #Defines
                dependencemap[currNode.data[10]] = cycle
                
                #Uses
                otherNode = dependencemap[currNode.data[2]]
                edges.append((currNode.data[2], cycle, otherNode))
                nodes[otherNode - 1].edges.append((currNode.data[2], cycle, otherNode))
                node.children.append(nodes[otherNode - 1])
                
                #Conflict to most recent store
                if recentStore is not None:
                    edges.append((-1, cycle, recentStore))
                    nodes[recentStore - 1].edges.append((-1, cycle, recentStore))
                    node.children.append(nodes[recentStore - 1])

                allLoads.append(cycle)
    
            #Store
            if currNode.data[0] == (0,1):
                #Uses
                otherNode = dependencemap[currNode.data[2]]
                edges.append((currNode.data[2], cycle, otherNode))
                nodes[otherNode - 1].edges.append((currNode.data[2], cycle, otherNode))
                node.children.append(nodes[otherNode - 1])

                otherNode = dependencemap[currNode.data[10]]
                edges.append((currNode.data[10], cycle, otherNode))
                nodes[otherNode - 1].edges.append((currNode.data[10], cycle, otherNode))
                node.children.append(nodes[otherNode - 1])
         
                #Serialization/Conflict edges
                if recentStore is not None:
                    edges.append((-2, cycle, recentStore))
                    nodes[recentStore - 1].edges.append((-2, cycle, recentStore))
                    node.children.append(nodes[recentStore - 1])
                    
                for load in allLoads:
                    edges.append((-2, cycle, load))
                    nodes[load - 1].edges.append((-2, cycle, load))
                    node.children.append(nodes[load - 1])
                    
                for output in allOutputs:
                    edges.append((-2, cycle, output))
                    nodes[output - 1].edges.append((-2, cycle, output))
                    node.children.append(nodes[output - 1])
                    
                recentStore = cycle
    
            #LoadI
            if currNode.data[0][0] == 1:
                #Defines
                dependencemap[currNode.data[10]] = cycle
    
            #Arithop
            if currNode.data[0][0] == 2: 
                #Defines
                dependencemap[currNode.data[10]] = cycle
    
                #Uses
                otherNode = dependencemap[currNode.data[2]]
                edges.append((currNode.data[2], cycle, otherNode))
                nodes[otherNode - 1].edges.append((currNode.data[2], cycle, otherNode))
                node.children.append(nodes[otherNode - 1])

                otherNode = dependencemap[currNode.data[6]]
                edges.append((currNode.data[6], cycle, otherNode))
                nodes[otherNode - 1].edges.append((currNode.data[6], cycle, otherNode))
                node.children.append(nodes[otherNode - 1])
    
            if currNode.data[0][0] == 3:        
                #Serialization to most recent output
                if recentOutput is not None:
                    edges.append((-2, cycle, recentOutput))
                    nodes[recentOutput - 1].edges.append((-2, cycle, recentOutput))
                    node.children.append(nodes[recentOutput - 1])
                    
                #Conflict to most recent store
                if recentStore is not None:
                    edges.append((-1, cycle, recentStore))
                    nodes[recentStore - 1].edges.append((-1, cycle, recentStore))
                    node.children.append(nodes[recentStore - 1])
                    
                recentOutput = cycle
                allOutputs.append(cycle)
                
            nodes.append(node)
           
        currNode = currNode.next
        cycle += 1
    end = time.time()
    print(end-start)
    return edges
    
def writedependence(nodes, edges, file):
    file.write("digraph DependenceGraph{\n")
    for node in nodes:
        """print(node.children)
        print(node.edges)
        print()"""
        if node.ilocType[0] == 0:  
            if node.ilocType[1] == 0:
                file.write('%i[label="%i: load r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr3))
            else:
                file.write('%i[label="%i: store r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr3))
        elif node.ilocType[0] == 1:  
                file.write('%i[label="%i: loadI %i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr3))
        elif node.ilocType[0] == 2:          
            if node.ilocType[1] == 0:  
                file.write('%i[label="%i: add r%i, r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3))
            elif node.ilocType[1] == 1:
                file.write('%i[label="%i: sub r%i, r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3))
            elif node.ilocType[1] == 2:   
                file.write('%i[label="%i: mult r%i, r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3))
            elif node.ilocType[1] == 3:  
                file.write('%i[label="%i: lshift r%i, r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3))
            else:
                file.write('%i[label="%i: rshift r%i, r%i => r%i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3))
        elif node.ilocType[0] == 3:
            file.write('%i[label="%i: output %i"];\n' % (node.num, node.num, node.vr1))
    for edge in edges:
        if edge[0] == -2:
            file.write('%i -> %i[label="Serialization"];\n' % (edge[1], edge[2]))
        elif edge[0] == -1:
            file.write('%i -> %i[label="Conflict"];\n' % (edge[1], edge[2]))
        else:
            file.write('%i -> %i[label="Data, r%i"];\n' % (edge[1], edge[2], edge[0]))
    file.write("}")

def writedependencepriorities(nodes, edges, file):
    file.write("digraph DependenceGraph{\n")
    for node in nodes:
        """print(node.num)
        print(node.children)
        print(node.edges)
        print()"""
        if node.ilocType[0] == 0:  
            if node.ilocType[1] == 0:
                file.write('%i[label="%i: load r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr3, node.priority))
            else:
                file.write('%i[label="%i: store r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr3, node.priority))
        elif node.ilocType[0] == 1:  
                file.write('%i[label="%i: loadI %i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr3, node.priority))
        elif node.ilocType[0] == 2:          
            if node.ilocType[1] == 0:  
                file.write('%i[label="%i: add r%i, r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3, node.priority))
            elif node.ilocType[1] == 1:
                file.write('%i[label="%i: sub r%i, r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3, node.priority))
            elif node.ilocType[1] == 2:   
                file.write('%i[label="%i: mult r%i, r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3, node.priority))
            elif node.ilocType[1] == 3:  
                file.write('%i[label="%i: lshift r%i, r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3, node.priority))
            else:
                file.write('%i[label="%i: rshift r%i, r%i => r%i, priority %i"];\n' % (node.num, node.num, node.vr1, node.vr2, node.vr3, node.priority))
        elif node.ilocType[0] == 3:
            file.write('%i[label="%i: output %i, priority %i"];\n' % (node.num, node.num, node.vr1, node.priority))
    for edge in edges:
        if edge[0] == -2:
            file.write('%i -> %i[label="Serialization"];\n' % (edge[1], edge[2]))
        elif edge[0] == -1:
            file.write('%i -> %i[label="Conflict"];\n' % (edge[1], edge[2]))
        else:
            file.write('%i -> %i[label="Data, r%i"];\n' % (edge[1], edge[2], edge[0]))
    file.write("}")

def postorder(root):
 
    currentRootIndex = 0
    currentLatency = 0
    stack = []
 
    while (root != None or len(stack) != 0):
        if (root != None):
            if root.ilocType[0] == 0:
                currentLatency += 6
            elif root.ilocType == (2,2):
                currentLatency += 3
            else:
                currentLatency += 1
            stack.append((root, currentRootIndex, currentLatency))
            currentRootIndex = 0
 
            if (len(root.children) >= 1):
                root = root.children[0]
            else:
                root = None
            continue
 
        temp = stack.pop()
        descendants = set()
        for child in temp[0].children:
            descendants = descendants.union(child.descendants)
            descendants.add(child.num)        
        temp[0].descendants = descendants
        if currentLatency > temp[0].latencyToRoot:
            temp[0].latencyToRoot = currentLatency
        if temp[0].ilocType[0] == 0:
            currentLatency -= 6
        elif temp[0].ilocType == (2,2):
            currentLatency -= 3
        else:
            currentLatency -= 1

        
        while (len(stack) != 0 and temp[1] == len(stack[-1][0].children) - 1):
            temp = stack.pop()

            descendants = set()
            for child in temp[0].children:
                descendants = descendants.union(child.descendants)
                descendants.add(child.num)
            
            temp[0].descendants = descendants
            if currentLatency > temp[0].latencyToRoot:
                temp[0].latencyToRoot = currentLatency
            if temp[0].ilocType[0] == 0:
                currentLatency -= 6
            elif temp[0].ilocType == (2,2):
                currentLatency -= 3
            else:
                currentLatency -= 1

        if (len(stack) != 0): 
            root = stack[-1][0].children[temp[1] + 1]
            currentRootIndex = temp[1] + 1
 
def calculatePriorities():
    global nodes
    start = time.time()
    roots = []
    for node in nodes:
        if node.edges == []:
            roots.append(node)
    end = time.time()
    print("Find roots")
    print(end-start)
            
    start = time.time()
    for root in roots:
        postorder(root)
    end = time.time()
    print("Calc latencies + descendants with treewalk")
    print(end-start)
    
    start = time.time()
    for node in nodes:
        node.priority = 10 * node.latencyToRoot + len(node.descendants)
    end = time.time()
    print("Calc priorities")
    print(end-start)

def schedule():
    cycle = 1
    ready = set()
    active = set()
    """for node in nodes:
        if node.children == []:"""
    #TODO    
    
def printIRwithVR(data, file):
    if data[0][0] == 0:  
        if data[0][1] == 0:
            print("load r%i => r%i\n" % (data[2], data[10]))
            file.write("load r%i => r%i\n" % (data[2], data[10]))
        else:
            print("store r%i => r%i\n" % (data[2], data[10]))
            file.write("store r%i => r%i\n" % (data[2], data[10]))
    elif data[0][0] == 1:  
        print("loadI %i => r%i\n" % (data[1], data[10]))
        file.write("loadI %i => r%i\n" % (data[1], data[10]))
    elif data[0][0] == 2:          
        if data[0][1] == 0:  
            print("add r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
            file.write("add r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
        elif data[0][1] == 1:        
            print("sub r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
            file.write("sub r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
        elif data[0][1] == 2:        
            print("mult r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
            file.write("mult r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
        elif data[0][1] == 3:        
            print("lshift r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
            file.write("lshift r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
        else:        
            print("rshift r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
            file.write("rshift r%i , r%i => r%i\n" % (data[2], data[6], data[10]))
    elif data[0][0] == 3:
        print("output %i\n" % data[1])  
        file.write("output %i\n" % data[1])          
    elif data[0][0] == 4:
        print("nop\n")          
        file.write("nop\n")          
    else:
        print("EOF")
        
def execute():
    global irHead, success, nodes
    parse()
    
    if success:
        rename()
        
        edges = dependence();
        if gflag:
            dgfile = open("dependencegraph.dot", "w")
            writedependence(nodes, edges, dgfile)
            dgfile.close

        calculatePriorities()
        print(nodes[-1].priority)

        if gflag:
            dgpfile = open("dependencegraphpriorities.dot", "w")
            writedependencepriorities(nodes, edges, dgpfile)
            dgpfile.close
        
        file = open("renamed.i", "w")
        #TODO
        curr = irHead
        while curr.data[0][0] != 9:
            #printIRwithVR(curr.data, file)
            curr = curr.next
        file.close()
    else:
        print_error("Since there were errors in the input file, IR is not printed.")
        
def print_error(*args):
     print(*args, file=sys.stderr)

def print_lexical_error(lineNumber, message):
    global success
    success = False
    print_error(("ERROR %i: " % lineNumber) + message)
    return ((11, 0))
    
def print_syntax_error(lineNumber, message):
    global line, charNum, lineNum, fakeEOL, success
    success = False
    if charNum == 0:
        print_error(("ERROR %i: " % (lineNumber-1)) + message)
    else:
        print_error(("ERROR %i: " % lineNumber) + message)
    line = ilocFile.readline()
    lineNum += 1
    charNum = 0
    if len(line) != 0 and line[-1] != "\n":
        line = line + "\n"
        fakeEOL = True

def initializeFile(ilocFilePath):
    global line, lineNum, nextline, ilocFile
    try:
        ilocFile = open(ilocFilePath, 'r')
        line = ilocFile.readline()
        lineNum = lineNum + 1;
        return True
    except:
        print_error("ERROR: The argument following the -x flag or k constant is not a valid filepath.")
        print(helpstring)
        return False

#OpCode=0, SR1=1,  VR1=2,  PR1=3,  NU1=4,  SR2,  VR2,  PR2,  NU2,  SR3,  VR3,  PR3,  NU3 
nodes = []
maxLive = 0
maxVR = 0
irHead = None
ilocFile = ""
lineNum = 0
charNum = 0
line = ""
fakeEOL = False
hflag, gflag = (False,)*2
lastArg = len(sys.argv) - 1
success = True
helpstring = """Command Line Options for schedule:
-h: Prints a list of valid command line arguments with descriptions of the function of each option.
<name>, where <name> is a valid filepath: If <name> leads to valid ILOC, the scheduler will print reordered ILOC code to standard output."""

#           MEMOP=0, LOADI=1, ARITHOP=2, OUTPUT=3, NOP=4, CONSTANT=5, REGISTER=6, COMMA=7, INTO=8, EOF=9, EOL=10, ERROR=11
ilocPOS = ("MEMOP", "LOADI", "ARITHOP", "OUTPUT", "NOP", "CONSTANT", "REGISTER", "COMMA", "INTO", "EOF", "EOL",  "ERROR")
#           load=0, store=1
memopPOS = ("load", "store")
#              add=0, sub=1, mult=2, lshift=3, rshift=4
arithopPOS = ("add", "sub", "mult", "lshift", "rshift")

if "-h" in sys.argv:
    hflag = True
if "-g" in sys.argv:
    gflag = True
    
if hflag:
    print(helpstring)
else:
    if lastArg < 1:
        print_error("ERROR: When no flags are selected, a filename leading to valid ILOC is necessary.")
        print(helpstring)  
    else:
        if initializeFile(sys.argv[1]):
            execute()
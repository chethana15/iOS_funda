class Node<T>{
    var value : T
    var next : Node?

    init (value: T){
        self.value = value
    }

}

class LinkedList<T>{
    var head : Node<T>?
    var size = Int()

    
//insert at first position
func insertAtFirstPosition(value: T){
let newNode = Node(value: value)
size = size + 1
if head == nil{
    head = newNode
    return
}else{
    newNode.next = head
    head = newNode
}

}

//insert at end (bit difficult compared to insert at first)
func insertAtLastPosition(value: T){
    let newNode = Node(value: value)

    size = size + 1
    if head == nil{
        head = newNode
        return
    }else{
        var current = head
        while current!.next != nil{
            current = current!.next
        } 
        current?.next = newNode
    }
}

func deleteFirstElement(){
        //corner case: When list is empty
        if head == nil{
            print("The list is empty")
            return
        }
         size = size - 1
        head = head?.next
    }

    func deleteLastElement(){
      //corner case: When list is empty
        if head == nil{
            print("The list is empty")
            return
        }else if head?.next == nil{
            print("The list has only one element")
            head = nil
            size = size - 1
            return
        }

        var secondLastElement = head
        var lastElement = head?.next

        while (lastElement?.next != nil){
            lastElement = lastElement?.next
            secondLastElement = lastElement
            size = size - 1
        }  
        secondLastElement?.next = nil
    }
//print
func printLinkedList(){
    if head == nil{
        print("This list is empty")

    }
    var current = head
        while current != nil{
            print("current value: \(current!.value)")
            current = current?.next
        } 
        
}

func getSize(){
    print("The size of list is \(size)")
    return
}

}
let myList = LinkedList<Int>()

myList.insertAtFirstPosition(value: 1)
myList.insertAtFirstPosition(value: 2)
myList.insertAtFirstPosition(value: 3)

myList.printLinkedList()
myList.getSize()
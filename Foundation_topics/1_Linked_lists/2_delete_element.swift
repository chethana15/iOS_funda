class Node<T>{
    var value : T
    var next : Node?

    init (value: T){
        self.value = value
    }
}

class LinkedList<T>{
    var head : Node<T>?

    func deleteFirstElement(){
        //corner case: When list is empty
        if head == nil{
            print("The list is empty")
            return
        }
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
            return
        }

        var secondLastElement = head
        var lastElement = head?.next

        while (lastElement?.next != nil){
            lastElement = lastElement?.next
            secondLastElement = lastElement
        }  
        secondLastElement?.next = nil
    }

    //insert at first position
func insertAtFirstPosition(value: T){
let newNode = Node(value: value)
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

//print
func printLinkedList(){
    if head == nil{
        print("This list is empty")

    }
    var current = head
        while current != nil{
            print("\(current!.value),", terminator: " ")
            current = current?.next
        } 
        print()
}
}


let myList = LinkedList<Int>()

myList.insertAtFirstPosition(value: 1)
myList.insertAtFirstPosition(value: 2)
myList.insertAtFirstPosition(value: 3)

myList.printLinkedList()

myList.deleteFirstElement()
myList.printLinkedList()
myList.deleteLastElement()
myList.printLinkedList()



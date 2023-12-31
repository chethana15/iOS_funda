class Node<T>{
    var value : T
    var next : Node?

    init (value: T){
        self.value = value
    }

}

class LinkedList<T>{
    var head : Node<T>?

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
        while current!.next != nil{
            print("current value: \(current!.value)")
            current = current!.next
        } 
    print("current value: \(current!.value)")
}

}

let myListInsertAtFirst = LinkedList<Int>()

myListInsertAtFirst.insertAtFirstPosition(value: 1)
myListInsertAtFirst.insertAtFirstPosition(value: 2)
myListInsertAtFirst.insertAtFirstPosition(value: 3)

print(myListInsertAtFirst)

myListInsertAtFirst.printLinkedList()

let myListInsertAtLast = LinkedList<String>()

myListInsertAtLast.insertAtLastPosition(value: "I")
myListInsertAtLast.insertAtLastPosition(value: "am able to")
myListInsertAtLast.insertAtLastPosition(value: "understand Linked list")
myListInsertAtLast.insertAtLastPosition(value: "and it's worth learning it!!")


print(myListInsertAtLast)

myListInsertAtLast.printLinkedList()

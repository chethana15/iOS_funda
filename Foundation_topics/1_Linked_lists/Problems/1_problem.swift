class Node<T>{
    var value : T
    var next : Node?

    init (value: T){
        self.value = value
    }
}

class LinkedList<T>{
    var head : Node<T>?

    func appendElemnt(value: T){
        let newNode = Node(value: value)

        if head == nil{
            head = newNode
            return
        }

        var currentNode = head
        while currentNode?.next != nil{
            currentNode = currentNode?.next
        }
        currentNode?.next = newNode
    }

    func printList(){

        if head == nil{
            print("List is empty")
            return
        }

        var currentNode = head
        while currentNode?.next != nil{
            print("\(currentNode!.value)", terminator:", ")
            currentNode = currentNode?.next
        }
        print("\(currentNode!.value)", terminator:"")
    }

    //Search for the element & display its index.

    func giveIndexOfAnElementInList(equals: (T) -> Bool){

        if head == nil{
            print("List is empty")
            return
        }
        var index = 0
        var currentNode = head

        while currentNode?.next != nil {
            
            if equals(currentNode!.value) {
                print()
                print("The value is at index \(index + 1)")
                return
            }
            currentNode = currentNode!.next
            index = index + 1
        }
        
    }
}
//Make a Linked List & add the following elements to it : (1, 5, 7, 3 , 8, 2, 3). 
let list = LinkedList<Int>()
list.printList()
list.appendElemnt(value:1)
list.appendElemnt(value:5)
list.appendElemnt(value:7)
list.appendElemnt(value:3)
list.appendElemnt(value:8)
list.appendElemnt(value:2)
list.appendElemnt(value:3)
list.printList()

//Search for the number 7 & display its index.
list.giveIndexOfAnElementInList { $0 == 7 }



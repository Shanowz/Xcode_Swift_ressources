TAGS: "table view controller" "custom table view" "tap bar controller" "navigation controler" "segue" "story board segue"

POUR TABLEVIEWCONTROLER
    1)dans le storyboard, créer un  Table View Controller
    2)créer un CocoaFile descendant de Table View Controller
    3)créer un CocoaFile descendant de Table View Cell
    4)Dans le storyboard: spécifier respectivement les classes du tableview et de la cell avec celles fraichement créées
    5)Créer un identifier pour la cell et le spécifier dans l'attribute inspector (pour que le dequeuereutilisablecell puisse faire son taff)

POUR FAIRE UN TABLE VIEW CUSTOM
    1)créer un VIEW CONTROLLER dans le storyboard + une classe cocoa
        dans le storyboard, y ajouter un table view, puis un table view cell (dans ce projet on réutilise la pasCustomCell, pour la copier: alt+glisser vers sa tableView)
    2)étendre (extension) la classe ViewController avec UITableViewDataSource et overrider avec numberOfRowsInSection et cellForRowAt
    3)sur la tableView, faire ctrl+glisser vers le ViewController parent et sélectionner dataSource

POUR AFFICHER UNE NOUVELLE VUE (A PARTIR DU STORY BOARD) --> cf CustomTableView
    1)sur l'élément déclencheur: ctrl+glisser vers la vue à afficher puis selectionner selection segue -> show
    2)si l'élément déclencheur est une cell: dans la classe parente (CustomTableView) créer un outlet contenant la tableView (voir code dans la methode prépare)

POUR FAIRE DES MENUS DANS LE TAB BAR CONTROLLER
    ctrl+click sur le bouton jaune du tab bar controller puis faire glisser vers une view et selectionner relationship segue -> view controller (même chose pour faire un navigation controller)
    

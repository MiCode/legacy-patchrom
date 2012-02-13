.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mConcomittantHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandConcomitantHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    const/16 v5, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-ne v0, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, j:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v0           #c:C
    .end local v2           #j:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #j:I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .parameter "ch"
    .parameter "input"
    .parameter "fromIndex"

    .prologue
    const/16 v3, 0x22

    move v1, p2

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-ne v0, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .end local v0           #c:C
    :goto_1
    return v2

    .restart local v0       #c:C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 3
    .parameter "input"
    .parameter "index"

    .prologue
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    move v2, v1

    .end local v0           #c:C
    :goto_1
    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_0

    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .local v3, j:I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, arg:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private static isAtoZ(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 22
    .parameter "raw_input"

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, input:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "A/"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object v0, v13

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v13, Ljava/lang/String;

    .end local v13           #input:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v13       #input:Ljava/lang/String;
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .end local p0
    :goto_1
    return-object v18

    .restart local p0
    :cond_0
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, entry:Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .local v15, key:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/AtCommandConcomitantHandler;

    move-object v0, v5

    check-cast v0, Landroid/bluetooth/AtCommandConcomitantHandler;

    move-object v10, v0

    .local v10, handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandConcomitantHandler;->handleCommand(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .end local v9           #entry:Ljava/util/Map$Entry;
    .end local v10           #handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    .end local v15           #key:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    const-string v19, "AT"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object v0, v13

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_4

    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x2

    .local v12, index:I
    new-instance v16, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .local v16, result:Landroid/bluetooth/AtCommandResult;
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, c:C
    invoke-static {v6}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v18

    if-eqz v18, :cond_6

    add-int/lit8 v18, v12, 0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/bluetooth/AtCommandHandler;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object/from16 v18, v16

    goto/16 :goto_1

    .restart local p0
    :cond_5
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object/from16 v18, v16

    goto/16 :goto_1

    .end local v5           #args:Ljava/lang/String;
    :cond_6
    const/16 v18, 0x2b

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    add-int/lit8 v18, v12, 0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v11

    .local v11, i:I
    invoke-virtual {v13, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, commandName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    move-object/from16 v18, v16

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/AtCommandHandler;

    .local v10, handler:Landroid/bluetooth/AtCommandHandler;
    const/16 v18, 0x3b

    move/from16 v0, v18

    move-object v1, v13

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v8

    .local v8, endIndex:I
    if-lt v11, v8, :cond_8

    const/16 v17, 0x0

    .local v17, type:I
    :goto_3
    packed-switch v17, :pswitch_data_0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v18, v16

    goto/16 :goto_1

    .end local v17           #type:I
    :cond_8
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    .restart local v17       #type:I
    goto :goto_3

    .end local v17           #type:I
    :cond_9
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    move v1, v8

    if-ge v0, v1, :cond_b

    add-int/lit8 v18, v11, 0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v17, 0x3

    .restart local v17       #type:I
    goto :goto_3

    .end local v17           #type:I
    :cond_a
    const/16 v17, 0x2

    .restart local v17       #type:I
    goto :goto_3

    .end local v17           #type:I
    :cond_b
    const/16 v17, 0x2

    .restart local v17       #type:I
    goto :goto_3

    .end local v17           #type:I
    :cond_c
    const/16 v17, 0x0

    .restart local v17       #type:I
    goto :goto_3

    :pswitch_0
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    :pswitch_3
    add-int/lit8 v18, v11, 0x1

    move-object v0, v13

    move/from16 v1, v18

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    .local v5, args:[Ljava/lang/Object;
    invoke-virtual {v10, v5}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .end local v5           #args:[Ljava/lang/Object;
    :cond_d
    move v12, v8

    goto/16 :goto_2

    .end local v7           #commandName:Ljava/lang/String;
    .end local v8           #endIndex:I
    .end local v10           #handler:Landroid/bluetooth/AtCommandHandler;
    .end local v11           #i:I
    .end local v17           #type:I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .end local v6           #c:C
    :cond_f
    move-object/from16 v18, v16

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandConcomitantHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

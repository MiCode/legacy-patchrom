.class Lcom/android/server/PackageManagerService$PackageSignatures;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSignatures"
.end annotation


# instance fields
.field private mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService$PackageSignatures;)V
    .locals 1
    .parameter "orig"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    :cond_0
    return-void
.end method

.method constructor <init>([Landroid/content/pm/Signature;)V
    .locals 0
    .parameter "sigs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    return-void
.end method

.method private assignSignatures([Landroid/content/pm/Signature;)V
    .locals 3
    .parameter "sigs"

    .prologue
    if-nez p1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, pastSignatures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/16 v17, 0x0

    const-string v18, "count"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, countStr:Ljava/lang/String;
    if-nez v6, :cond_0

    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <signatures> has no count at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, count:I
    move v0, v5

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    .local v13, pos:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .end local v6           #countStr:Ljava/lang/String;
    .local v12, outerDepth:I
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v12

    if-le v0, v1, :cond_a

    :cond_2
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .local v15, tagName:Ljava/lang/String;
    const-string v17, "cert"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    if-ge v13, v5, :cond_8

    const/16 v17, 0x0

    const-string v18, "index"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, index:Ljava/lang/String;
    if-eqz v9, :cond_7

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, idx:I
    const/16 v17, 0x0

    const-string v18, "key"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, key:Ljava/lang/String;
    if-nez v10, :cond_5

    if-ltz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/Signature;

    .local v14, sig:Landroid/content/pm/Signature;
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/Signature;

    aput-object v6, v17, v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    .end local v8           #idx:I
    .end local v9           #index:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .restart local v8       #idx:I
    .restart local v9       #index:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v14       #sig:Landroid/content/pm/Signature;
    :cond_3
    const/16 v17, 0x5

    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not defined at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v8           #idx:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .local v7, e:Ljava/lang/NumberFormatException;
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not a number at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #idx:I
    .restart local v10       #key:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x5

    :try_start_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is out of bounds at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-gt v0, v1, :cond_6

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v14, Landroid/content/pm/Signature;

    invoke-direct {v14, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .restart local v14       #sig:Landroid/content/pm/Signature;
    move-object/from16 v0, p2

    move v1, v8

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    aput-object v14, v17, v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .end local v8           #idx:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :cond_7
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> has no index at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    .end local v9           #index:Ljava/lang/String;
    :cond_8
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown element under <cert>: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    .end local v15           #tagName:Ljava/lang/String;
    :cond_a
    if-ge v13, v5, :cond_b

    new-array v11, v13, [Landroid/content/pm/Signature;

    .local v11, newSigs:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v11

    move/from16 v3, v19

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .end local v11           #newSigs:[Landroid/content/pm/Signature;
    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "PackageSignatures{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_1
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "serializer"
    .parameter "tagName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, pastSignatures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v8, 0x0

    const-string v10, "index"

    const-string v9, "cert"

    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "count"

    iget-object v7, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    const-string v6, "cert"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v6, v0

    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    .local v5, sigHash:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, numPast:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .local v3, pastSig:Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "index"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v3           #pastSig:Landroid/content/pm/Signature;
    :cond_1
    if-lt v1, v2, :cond_2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "index"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "key"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v6, "cert"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .restart local v3       #pastSig:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #j:I
    .end local v2           #numPast:I
    .end local v3           #pastSig:Landroid/content/pm/Signature;
    .end local v4           #sig:Landroid/content/pm/Signature;
    .end local v5           #sigHash:I
    :cond_4
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

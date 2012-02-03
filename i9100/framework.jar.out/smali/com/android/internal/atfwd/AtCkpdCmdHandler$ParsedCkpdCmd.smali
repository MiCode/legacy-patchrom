.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
.super Ljava/lang/Object;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCkpdCmd"
.end annotation


# instance fields
.field private mEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

.field private mPauseTime:J

.field private mPressTime:J

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 2
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    .line 81
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    .line 82
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->parse_cmd()V

    .line 85
    return-void
.end method

.method private parse_cmd()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v22

    .line 96
    .local v22, tokens:[Ljava/lang/String;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, v22

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 97
    :cond_0
    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v4, "Must provide 1 to three tokens"

    invoke-direct {v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    .line 100
    .local v18, keys:[C
    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    .line 103
    .local v20, orig:[C
    move-object/from16 v0, v22

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 106
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_2
    move-object/from16 v0, v22

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 114
    const/4 v3, 0x2

    :try_start_1
    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_3
    const/16 v16, 0x0

    .line 121
    .local v16, instring:Z
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v21, theString:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move v3, v0

    if-ge v14, v3, :cond_b

    .line 123
    if-eqz v16, :cond_6

    .line 124
    aget-char v3, v18, v14

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    .line 125
    const/16 v16, 0x0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 127
    .local v13, events:[Landroid/view/KeyEvent;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    if-eqz v13, :cond_4

    .line 129
    move-object v11, v13

    .local v11, arr$:[Landroid/view/KeyEvent;
    move-object v0, v11

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget-object v17, v11, v15

    .line 130
    .local v17, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 107
    .end local v11           #arr$:[Landroid/view/KeyEvent;
    .end local v13           #events:[Landroid/view/KeyEvent;
    .end local v14           #i:I
    .end local v15           #i$:I
    .end local v16           #instring:Z
    .end local v17           #keyEvent:Landroid/view/KeyEvent;
    .end local v19           #len$:I
    .end local v21           #theString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 108
    .local v12, e:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong arg2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 116
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong arg3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v22, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #events:[Landroid/view/KeyEvent;
    .restart local v14       #i:I
    .restart local v16       #instring:Z
    .restart local v21       #theString:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find all keycodes for string \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v13           #events:[Landroid/view/KeyEvent;
    :cond_5
    aget-char v3, v20, v14

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_6
    aget-char v3, v18, v14

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_8

    .line 140
    const/16 v16, 0x1

    .line 122
    :cond_7
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 143
    :cond_8
    aget-char v3, v18, v14

    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    .line 145
    aget-char v3, v18, v14

    const/16 v4, 0x57

    if-ne v3, v4, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object v3, v0

    new-instance v4, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    move-wide v5, v0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_9
    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v3

    aget-char v4, v18, v14

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 151
    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v20, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object v11, v0

    new-instance v3, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v9

    aget-char v10, v18, v14

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v11, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object v11, v0

    new-instance v3, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v9

    aget-char v10, v18, v14

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v11, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object v3, v0

    new-instance v4, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    move-wide v5, v0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 157
    :cond_b
    return-void
.end method


# virtual methods
.method public getEvents()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method

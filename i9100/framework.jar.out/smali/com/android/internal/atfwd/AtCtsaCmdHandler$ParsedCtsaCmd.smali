.class Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
.super Ljava/lang/Object;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCtsaCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCtsaCmd"
.end annotation


# static fields
.field private static final CTSA_ACTION_DBL_TAP:I = 0x3

.field private static final CTSA_ACTION_DEPRESS:I = 0x1

.field private static final CTSA_ACTION_LNG_TAP:I = 0x4

.field private static final CTSA_ACTION_RELEASE:I = 0x0

.field private static final CTSA_ACTION_TAP:I = 0x2

.field private static final LNG_PRESS_TIME:J = 0x5dcL

.field private static final PRESS_TIME:J = 0xc8L


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

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 1
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    .line 89
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->parse_cmd()V

    .line 90
    return-void
.end method

.method private addClick(FFJ)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "presstime"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 153
    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 155
    .local v8, evt:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    invoke-direct {v1, p3, p4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v8}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 160
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method private parse_cmd()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v8, -0x1

    .line 98
    .local v8, ctsaAction:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 99
    .local v0, time:J
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v2}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, tokens:[Ljava/lang/String;
    const-wide/16 v11, 0xc8

    .line 111
    .local v11, presstime:J
    if-eqz v13, :cond_0

    array-length v2, v13

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 112
    :cond_0
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v3, "Must provide three tokens"

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 117
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 118
    .local v5, x:F
    const/4 v2, 0x2

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 120
    .local v6, y:F
    packed-switch v8, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 124
    .local v10, evt:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v10           #evt:Landroid/view/MotionEvent;
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 146
    .local v9, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    invoke-direct {v2, v9}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 127
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #x:F
    .restart local v6       #y:F
    :pswitch_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    :try_start_1
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 129
    .restart local v10       #evt:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v10           #evt:Landroid/view/MotionEvent;
    :pswitch_2
    const-wide/16 v11, 0x5dc

    .line 135
    :pswitch_3
    invoke-direct {p0, v5, v6, v11, v12}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-direct {p0, v5, v6, v11, v12}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V

    .line 141
    invoke-direct {p0, v5, v6, v11, v12}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
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
    .line 165
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method

.method public getOriginalCommand()Lcom/android/internal/atfwd/AtCmd;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    return-object v0
.end method

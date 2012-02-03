.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/app/Activity;
.source "GetPin2Screen.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mPin2Field:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/phone/GetPin2Screen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$1;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->handler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/phone/GetPin2Screen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$3;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GetPin2Screen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 109
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 113
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 119
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->setContentView(I)V

    .line 50
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 51
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->setupView()V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/GetPin2Screen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/GetPin2Screen$2;-><init>(Lcom/android/phone/GetPin2Screen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

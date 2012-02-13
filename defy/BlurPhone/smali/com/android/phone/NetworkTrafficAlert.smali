.class public Lcom/android/phone/NetworkTrafficAlert;
.super Landroid/app/Activity;
.source "NetworkTrafficAlert.java"


# instance fields
.field private mShowNextTime:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkTrafficAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/NetworkTrafficAlert;->saveSettings()V

    return-void
.end method

.method private saveSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v2, p0, Lcom/android/phone/NetworkTrafficAlert;->mShowNextTime:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "networkalertdialog"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/NetworkTrafficAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "needshow"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v4, "NetworkTrafficAlert"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/android/phone/NetworkTrafficAlert;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 33
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/android/phone/NetworkTrafficAlert;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const v4, 0x7f03003f

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkTrafficAlert;->setContentView(I)V

    .line 40
    const v4, 0x7f0b0458

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkTrafficAlert;->setTitle(I)V

    .line 41
    const v4, 0x1080027

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 42
    const v4, 0x7f07012d

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkTrafficAlert;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/phone/NetworkTrafficAlert;->mShowNextTime:Landroid/widget/CheckBox;

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/NetworkTrafficAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, res:Landroid/content/res/Resources;
    const v4, 0x7f0b0459

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, text:Ljava/lang/String;
    const v4, 0x7f07012c

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkTrafficAlert;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v4, 0x7f07012e

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkTrafficAlert;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/phone/NetworkTrafficAlert$1;

    invoke-direct {v5, p0}, Lcom/android/phone/NetworkTrafficAlert$1;-><init>(Lcom/android/phone/NetworkTrafficAlert;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

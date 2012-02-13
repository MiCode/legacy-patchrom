.class public Lcom/motorola/blur/setup/WiFiSettingsActivity;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "WiFiSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    return-void
.end method

.method private final setButtons()V
    .locals 5

    .prologue
    .line 47
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 49
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0004

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 50
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0003

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 51
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected final goNext()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;-><init>(Lcom/motorola/blur/setup/WiFiSettingsActivity;)V

    .line 80
    .local v0, onConnection:Ljava/lang/Runnable;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->goNext()V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->goBack()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f03004d

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const-string v3, "WiFiSettings"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 39
    .local v1, win:Landroid/view/Window;
    const v2, 0x7f0b0124

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 40
    .local v0, view:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 42
    invoke-direct {p0}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->setButtons()V

    .line 43
    return-void
.end method

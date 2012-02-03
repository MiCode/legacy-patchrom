.class public Lcom/android/settings/wifi/WifiApSettings_Help;
.super Landroid/app/Activity;
.source "WifiApSettings_Help.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings_Help;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings_Help;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f030066

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings_Help;->setContentView(I)V

    .line 78
    const v2, 0x7f0b0143

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings_Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 80
    .local v0, not_show_again:Landroid/widget/CheckBox;
    const v2, 0x7f0b0144

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings_Help;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, ok_button:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings_Help;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings_Help;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    new-instance v2, Lcom/android/settings/wifi/WifiApSettings_Help$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/WifiApSettings_Help$1;-><init>(Lcom/android/settings/wifi/WifiApSettings_Help;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v2, Lcom/android/settings/wifi/WifiApSettings_Help$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings_Help$2;-><init>(Lcom/android/settings/wifi/WifiApSettings_Help;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

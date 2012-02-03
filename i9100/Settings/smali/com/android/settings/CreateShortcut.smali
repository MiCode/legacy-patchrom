.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v4, "CreateShortcut"

    .line 20
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 22
    .local v1, shortcutIntent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    const-string v2, "CreateShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v2, "CreateShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : Resource ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 37
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    .line 39
    return-void
.end method

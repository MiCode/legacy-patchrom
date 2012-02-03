.class public Lcom/android/server/am/LaunchWarningWindow;
.super Landroid/app/Dialog;
.source "LaunchWarningWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .parameter "context"
    .parameter "cur"
    .parameter "next"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    const v2, 0x10300ad

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {p0, v4}, Lcom/android/server/am/LaunchWarningWindow;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 21
    const v2, 0x109003e

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->setContentView(I)V

    .line 22
    const v2, 0x10403a0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 25
    const v2, 0x1020216

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    const v2, 0x1020217

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403a1

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v2, 0x1020218

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .restart local v0       #icon:Landroid/widget/ImageView;
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const v2, 0x1020219

    invoke-virtual {p0, v2}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 33
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403a2

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

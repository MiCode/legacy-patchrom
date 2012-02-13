.class public Landroid/app/LauncherActivity$ListItem;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V
    .locals 2
    .parameter "pm"
    .parameter "resolveInfo"
    .parameter "resizer"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, ci:Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :cond_0
    iget-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    return-void
.end method

.class Landroid/app/LauncherActivity$ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field protected final mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V
    .locals 1
    .parameter
    .parameter "resizer"

    .prologue
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V
    .locals 6
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    iget-object v3, p2, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v4}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$1;)V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    invoke-direct {p0, v0, v1}, Landroid/app/LauncherActivity$ActivityAdapter;->bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V

    return-object v0

    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4
    .parameter "position"

    .prologue
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    iget-object v2, v2, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    .local v1, item:Landroid/app/LauncherActivity$ListItem;
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/LauncherActivity$ListItem;

    move-object v0, p0

    goto :goto_0
.end method

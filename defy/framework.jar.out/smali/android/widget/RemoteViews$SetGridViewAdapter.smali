.class Landroid/widget/RemoteViews$SetGridViewAdapter;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetGridViewAdapter"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILcom/motorola/android/widget/RemoteGridViewAdapter;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "adapter"

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    iput p2, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->viewId:I

    sget-object v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 5
    .parameter "root"

    .prologue
    iget v3, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, target:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->this$0:Landroid/widget/RemoteViews;

    #getter for: Landroid/widget/RemoteViews;->mPassedContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/RemoteViews;->access$100(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setContext(Landroid/content/Context;)V

    move-object v0, v2

    check-cast v0, Landroid/widget/GridView;

    move-object v1, v0

    .local v1, gridView:Landroid/widget/GridView;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    invoke-virtual {v3}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .end local v1           #gridView:Landroid/widget/GridView;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetGridViewAdapter;->remoteAdapter:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    #setter for: Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

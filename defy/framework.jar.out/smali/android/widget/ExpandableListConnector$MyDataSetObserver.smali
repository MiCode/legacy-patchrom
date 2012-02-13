.class public Landroid/widget/ExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ExpandableListConnector;


# direct methods
.method protected constructor <init>(Landroid/widget/ExpandableListConnector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    #calls: Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/widget/ExpandableListConnector;->access$000(Landroid/widget/ExpandableListConnector;ZZ)V

    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    #calls: Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/widget/ExpandableListConnector;->access$000(Landroid/widget/ExpandableListConnector;ZZ)V

    iget-object v0, p0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->notifyDataSetInvalidated()V

    return-void
.end method

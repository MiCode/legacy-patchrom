.class Lcom/motorola/CameraF/View/SummaryListPreference$1;
.super Ljava/lang/Object;
.source "SummaryListPreference.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/View/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/SummaryListPreference;

.field final synthetic val$mEntries:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/View/SummaryListPreference;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/CameraF/View/SummaryListPreference$1;->this$0:Lcom/motorola/CameraF/View/SummaryListPreference;

    iput-object p2, p0, Lcom/motorola/CameraF/View/SummaryListPreference$1;->val$mEntries:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v5, 0x1

    .line 90
    instance-of v1, p1, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/View/SummaryListPreference$1;->val$mEntries:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/motorola/CameraF/View/SummaryListPreference$1;->this$0:Lcom/motorola/CameraF/View/SummaryListPreference;

    #getter for: Lcom/motorola/CameraF/View/SummaryListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v4}, Lcom/motorola/CameraF/View/SummaryListPreference;->access$000(Lcom/motorola/CameraF/View/SummaryListPreference;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 92
    check-cast p1, Landroid/widget/CheckedTextView;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v5

    .line 99
    :goto_0
    return v1

    .line 95
    .restart local p1
    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v5

    .line 97
    goto :goto_0

    .line 99
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

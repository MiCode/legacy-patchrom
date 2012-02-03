.class final Landroid/app/SuggestionsAdapter$ChildViewCache;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChildViewCache"
.end annotation


# instance fields
.field public final mIcon1:Landroid/widget/ImageView;

.field public final mIcon2:Landroid/widget/ImageView;

.field public final mText1:Landroid/widget/TextView;

.field public final mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 276
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    .line 277
    const v0, 0x1020007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    .line 278
    const v0, 0x1020008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    .line 279
    return-void
.end method

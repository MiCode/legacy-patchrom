.class Lcom/android/settings/AppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppWidgetPickActivity;->getItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/AppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AppWidgetPickActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/AppWidgetPickActivity$1;->this$0:Lcom/android/settings/AppWidgetPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/ActivityPicker$PickAdapter$Item;Lcom/android/settings/ActivityPicker$PickAdapter$Item;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity$1;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .end local p1
    check-cast p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppWidgetPickActivity$1;->compare(Lcom/android/settings/ActivityPicker$PickAdapter$Item;Lcom/android/settings/ActivityPicker$PickAdapter$Item;)I

    move-result v0

    return v0
.end method

.class Landroid/widget/ListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/ListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3976
    new-instance v0, Landroid/widget/ListView$SavedState$1;

    invoke-direct {v0}, Landroid/widget/ListView$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/ListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 3952
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3953
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3954
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 3956
    .local v0, idState:[J
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3957
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 3958
    iget-object v1, p0, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/util/LongSparseArray;->setValues([JLjava/lang/Object;)V

    .line 3960
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/ListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3934
    invoke-direct {p0, p1}, Landroid/widget/ListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;Landroid/util/LongSparseArray;)V
    .locals 0
    .parameter "superState"
    .parameter "checkState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Landroid/util/SparseBooleanArray;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3943
    .local p3, checkIdState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3944
    iput-object p2, p0, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3945
    iput-object p3, p0, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 3946
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3964
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3965
    iget-object v0, p0, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 3966
    iget-object v0, p0, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->getKeys()[J

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3967
    return-void

    .line 3966
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    goto :goto_0
.end method

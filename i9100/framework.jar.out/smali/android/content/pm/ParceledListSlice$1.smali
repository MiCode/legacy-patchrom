.class final Landroid/content/pm/ParceledListSlice$1;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/ParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, numItems:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_0

    move v0, v7

    .line 148
    .local v0, lastSlice:Z
    :goto_0
    if-lez v1, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, parcelSize:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 153
    .local v2, offset:I
    add-int v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 156
    .local v3, p:Landroid/os/Parcel;
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 157
    invoke-virtual {v3, p1, v2, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 158
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v1, v0, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V

    .line 162
    .end local v2           #offset:I
    .end local v3           #p:Landroid/os/Parcel;
    .end local v4           #parcelSize:I
    :goto_1
    return-object v5

    .end local v0           #lastSlice:Z
    :cond_0
    move v0, v6

    .line 146
    goto :goto_0

    .line 162
    .restart local v0       #lastSlice:Z
    :cond_1
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5}, Landroid/content/pm/ParceledListSlice;-><init>()V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ParceledListSlice;
    .locals 1
    .parameter "size"

    .prologue
    .line 167
    new-array v0, p1, [Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->newArray(I)[Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/internal/telephony/gsm/stk/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultItem:I

.field public helpAvailable:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Item;",
            ">;"
        }
    .end annotation
.end field

.field public itemsIconSelfExplanatory:Z

.field public presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

.field public softKeyPreferred:Z

.field public title:Ljava/lang/String;

.field public titleAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public titleIcon:Landroid/graphics/Bitmap;

.field public titleIconSelfExplanatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Menu$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/Menu$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleAttrs:Ljava/util/List;

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Item;

    .local v1, item:Lcom/android/internal/telephony/gsm/stk/Item;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/PresentationType;->values()[Lcom/android/internal/telephony/gsm/stk/PresentationType;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    return-void

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/Menu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/PresentationType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method

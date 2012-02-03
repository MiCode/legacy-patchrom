.class public final Landroid/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 40
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 1514
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 115
    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 117
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 118
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    :goto_0
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 129
    :goto_1
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 130
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 131
    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 132
    return-void

    .line 120
    :cond_0
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 126
    :cond_1
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcelledData"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcelledData"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 53
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 95
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 142
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    .line 769
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 770
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "defaultValue"
    .parameter "e"

    .prologue
    const-string v2, "Bundle"

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v1, "Bundle"

    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v2, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 236
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 239
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 250
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, mask:I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1531
    or-int/lit8 v0, v0, 0x1

    .line 1533
    :cond_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 261
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 781
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 782
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    .line 789
    :goto_0
    return v1

    .line 786
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 787
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 788
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 789
    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1277
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1278
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1279
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1286
    :goto_0
    return-object v3

    .line 1283
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1285
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1286
    goto :goto_0
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1078
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1079
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1080
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1087
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1084
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1085
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Bundle"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1087
    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter "key"

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 814
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 815
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 816
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 822
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 819
    .restart local v2       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #o:Ljava/lang/Object;
    move-object v0, v2

    goto :goto_0

    .line 820
    .restart local v2       #o:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 821
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 822
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1299
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1300
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1301
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1308
    :goto_0
    return-object v3

    .line 1305
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1307
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1308
    goto :goto_0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .parameter "key"

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 847
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    .line 855
    :goto_0
    return v1

    .line 852
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 853
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 854
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 855
    goto :goto_0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1343
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1344
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1345
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1352
    :goto_0
    return-object v3

    .line 1349
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1351
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1352
    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1056
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1057
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1058
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1065
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1062
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1063
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1065
    goto :goto_0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1475
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1476
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1477
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1484
    :goto_0
    return-object v3

    .line 1481
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1483
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1484
    goto :goto_0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1255
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1256
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1257
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1264
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1261
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1262
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<CharSequence>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1264
    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1000
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1012
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1013
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move-wide v1, p2

    .line 1020
    :goto_0
    return-wide v1

    .line 1017
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 1018
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1019
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 1020
    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1431
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1432
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1433
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1440
    :goto_0
    return-object v3

    .line 1437
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1439
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1440
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "key"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 967
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 979
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 980
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    .line 987
    :goto_0
    return v1

    .line 984
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 985
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 986
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 987
    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1409
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1410
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1411
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1418
    :goto_0
    return-object v3

    .line 1415
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1417
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1418
    goto :goto_0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1501
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1502
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1503
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1510
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1507
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1508
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1509
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "IBinder"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1510
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 901
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 913
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 914
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    .line 921
    :goto_0
    return v1

    .line 918
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 919
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 920
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 921
    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1365
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1366
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1367
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1374
    :goto_0
    return-object v3

    .line 1371
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1373
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1374
    goto :goto_0
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1211
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1212
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1213
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1220
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1217
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1218
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1220
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 934
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 946
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 947
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move-wide v1, p2

    .line 954
    :goto_0
    return-wide v1

    .line 951
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 952
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 953
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    .line 954
    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1388
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1389
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1396
    :goto_0
    return-object v3

    .line 1393
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1395
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1396
    goto :goto_0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 157
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 158
    .local v2, size:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 159
    const-string v3, "Bundle"

    const-string v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    if-nez v2, :cond_1

    move-object v3, v5

    .line 169
    :goto_0
    return-object v3

    .line 164
    :cond_1
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v3, v1

    goto :goto_0

    .line 167
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "getPairValue()"

    const-string v4, "String"

    invoke-direct {p0, v3, v1, v4, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v5

    .line 169
    goto :goto_0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1100
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1101
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1102
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1109
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1106
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1107
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1108
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Parcelable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1109
    goto :goto_0
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1122
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1123
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1124
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1131
    :goto_0
    return-object v3

    .line 1128
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1130
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1131
    goto :goto_0
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1144
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1145
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1146
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1153
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1150
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1151
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1153
    goto :goto_0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1189
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1190
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1191
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1198
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1195
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1196
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1197
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Serializable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1198
    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter "key"

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 880
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 881
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    .line 888
    :goto_0
    return v1

    .line 885
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 887
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    .line 888
    goto :goto_0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1321
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1322
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1323
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1330
    :goto_0
    return-object v3

    .line 1327
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1329
    .local v1, e:Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1330
    goto :goto_0
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1167
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1168
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1169
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1176
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1173
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1174
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "SparseArray"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1176
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 1034
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1035
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1036
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1043
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1040
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1041
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1043
    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1453
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1454
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1455
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1462
    :goto_0
    return-object v3

    .line 1459
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1461
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1462
    goto :goto_0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1233
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1234
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1235
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 1242
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1239
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 1240
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1241
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    .line 1242
    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 303
    iget-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v8, :cond_1

    .line 304
    const/4 v3, 0x0

    .line 306
    .local v3, fdFound:Z
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v8, :cond_2

    .line 307
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    const/4 v3, 0x1

    .line 359
    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 360
    iput-boolean v9, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 362
    .end local v3           #fdFound:Z
    :cond_1
    iget-boolean v8, p0, Landroid/os/Bundle;->mHasFds:Z

    return v8

    .line 312
    .restart local v3       #fdFound:Z
    :cond_2
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 313
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_1
    if-nez v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 314
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 315
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Landroid/os/Parcelable;

    if-eqz v8, :cond_4

    .line 316
    check-cast v6, Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 318
    const/4 v3, 0x1

    .line 319
    goto :goto_0

    .line 321
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_4
    instance-of v8, v6, [Landroid/os/Parcelable;

    if-eqz v8, :cond_6

    .line 322
    check-cast v6, [Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Landroid/os/Parcelable;

    move-object v1, v0

    .line 323
    .local v1, array:[Landroid/os/Parcelable;
    array-length v8, v1

    sub-int v5, v8, v9

    .local v5, n:I
    :goto_2
    if-ltz v5, :cond_3

    .line 324
    aget-object v8, v1, v5

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 326
    const/4 v3, 0x1

    .line 327
    goto :goto_1

    .line 323
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 330
    .end local v1           #array:[Landroid/os/Parcelable;
    .end local v5           #n:I
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_6
    instance-of v8, v6, Landroid/util/SparseArray;

    if-eqz v8, :cond_8

    .line 331
    move-object v0, v6

    check-cast v0, Landroid/util/SparseArray;

    move-object v2, v0

    .line 333
    .local v2, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_3
    if-ltz v5, :cond_3

    .line 334
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 336
    const/4 v3, 0x1

    .line 337
    goto :goto_1

    .line 333
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 340
    .end local v2           #array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5           #n:I
    :cond_8
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 341
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 344
    .local v1, array:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_3

    .line 346
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_4
    if-ltz v5, :cond_3

    .line 347
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 348
    .local v7, p:Landroid/os/Parcelable;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    .line 350
    const/4 v3, 0x1

    .line 351
    goto/16 :goto_1

    .line 346
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 228
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 296
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 282
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 285
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 286
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 287
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 374
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 599
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 719
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 386
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 611
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 398
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 635
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 482
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 707
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 575
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 458
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 683
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 446
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 671
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 735
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 422
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 647
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 551
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 434
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 659
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 494
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 496
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 508
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 510
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 523
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 525
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 587
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 410
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 623
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 538
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 540
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 470
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 695
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 563
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 1569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1570
    .local v0, length:I
    if-gez v0, :cond_0

    .line 1571
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1573
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1574
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "parcel"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Bundle"

    .line 1577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1578
    .local v0, magic:I
    const v4, 0x4c444e42

    if-eq v0, v4, :cond_0

    .line 1580
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1581
    .local v3, st:Ljava/lang/String;
    const-string v4, "Bundle"

    const-string/jumbo v4, "readBundle: bad magic number"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const-string v4, "Bundle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readBundle: trace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .end local v3           #st:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1587
    .local v1, offset:I
    add-int v4, v1, p2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1590
    .local v2, p:Landroid/os/Parcel;
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1591
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1592
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1594
    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1595
    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v4

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 1596
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 1597
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 271
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 181
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 220
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "]"

    .line 1601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1605
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .locals 4

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 205
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    .line 208
    :cond_2
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 209
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #N:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const v4, 0x4c444e42

    .line 1542
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_0

    .line 1543
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1544
    .local v0, length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1561
    :goto_0
    return-void

    .line 1548
    .end local v0           #length:I
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1552
    .local v2, oldPos:I
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1553
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1556
    .local v1, newPos:I
    const/16 v3, 0x8

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1557
    sub-int v0, v1, v2

    .line 1558
    .restart local v0       #length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

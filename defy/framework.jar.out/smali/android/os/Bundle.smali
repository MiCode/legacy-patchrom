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
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_0
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    :goto_1
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_0
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcelledData"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcelledData"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Bundle"

    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v2, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, mask:I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    :goto_0
    return v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Bundle"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v2       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #o:Ljava/lang/Object;
    move-object v0, v2

    goto :goto_0

    .restart local v2       #o:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    :goto_0
    return v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    goto :goto_0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<CharSequence>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move-wide v1, p2

    :goto_0
    return-wide v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    :goto_0
    return v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "IBinder"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    :goto_0
    return v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move-wide v1, p2

    :goto_0
    return-wide v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v1, p2

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .local v2, size:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v3, "Bundle"

    const-string v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    move-object v3, v5

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v3, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "getPairValue()"

    const-string v4, "String"

    invoke-direct {p0, v3, v1, v4, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v5

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Parcelable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "Serializable"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    move v1, p2

    :goto_0
    return v1

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

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, p2

    goto :goto_0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "SparseArray"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

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

    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    iget-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v8, :cond_1

    const/4 v3, 0x0

    .local v3, fdFound:Z
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v9, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .end local v3           #fdFound:Z
    :cond_1
    iget-boolean v8, p0, Landroid/os/Bundle;->mHasFds:Z

    return v8

    .restart local v3       #fdFound:Z
    :cond_2
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_1
    if-nez v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Landroid/os/Parcelable;

    if-eqz v8, :cond_4

    check-cast v6, Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .restart local v6       #obj:Ljava/lang/Object;
    :cond_4
    instance-of v8, v6, [Landroid/os/Parcelable;

    if-eqz v8, :cond_6

    check-cast v6, [Landroid/os/Parcelable;

    .end local v6           #obj:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Landroid/os/Parcelable;

    move-object v1, v0

    .local v1, array:[Landroid/os/Parcelable;
    array-length v8, v1

    sub-int v5, v8, v9

    .local v5, n:I
    :goto_2
    if-ltz v5, :cond_3

    aget-object v8, v1, v5

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #array:[Landroid/os/Parcelable;
    .end local v5           #n:I
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_6
    instance-of v8, v6, Landroid/util/SparseArray;

    if-eqz v8, :cond_8

    move-object v0, v6

    check-cast v0, Landroid/util/SparseArray;

    move-object v2, v0

    .local v2, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_3
    if-ltz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    invoke-interface {v8}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v2           #array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5           #n:I
    :cond_8
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .local v1, array:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, v9

    .restart local v5       #n:I
    :goto_4
    if-ltz v5, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .local v7, p:Landroid/os/Parcelable;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

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
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .parameter "map"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

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
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, length:I
    if-gez v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "parcel"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Bundle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, magic:I
    const v4, 0x4c444e42

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .local v3, st:Ljava/lang/String;
    const-string v4, "Bundle"

    const-string v4, "readBundle: bad magic number"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Bundle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readBundle: trace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #st:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .local v1, offset:I
    add-int v4, v1, p2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, p:Landroid/os/Parcel;
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v4

    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/Bundle;->mFdsKnown:Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    iget-object v0, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "]"

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, N:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    :cond_2
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

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

    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .local v0, length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_0
    return-void

    .end local v0           #length:I
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .local v2, oldPos:I
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .local v1, newPos:I
    const/16 v3, 0x8

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v1, v2

    .restart local v0       #length:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

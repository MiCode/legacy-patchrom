.class Landroid/pim/vcard/VCardEntry$Property;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Property"
.end annotation


# instance fields
.field private mParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPropertyBytes:[B

.field private mPropertyName:Ljava/lang/String;

.field private mPropertyValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/pim/vcard/VCardEntry$Property;)[B
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B

    return-object v0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .end local v0           #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0           #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .restart local v0       #values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public addToPropertyValueList(Ljava/lang/String;)V
    .locals 1
    .parameter "propertyValue"

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B

    return-void
.end method

.method public final getParameters(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final getPropertyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;

    return-object v0
.end method

.method public setPropertyBytes([B)V
    .locals 0
    .parameter "propertyBytes"

    .prologue
    iput-object p1, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .parameter "propertyName"

    .prologue
    iput-object p1, p0, Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;

    return-void
.end method

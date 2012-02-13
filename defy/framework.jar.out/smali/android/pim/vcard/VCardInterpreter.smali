.class public interface abstract Landroid/pim/vcard/VCardInterpreter;
.super Ljava/lang/Object;
.source "VCardInterpreter.java"


# virtual methods
.method public abstract end()V
.end method

.method public abstract endEntry()V
.end method

.method public abstract endProperty()V
.end method

.method public abstract propertyGroup(Ljava/lang/String;)V
.end method

.method public abstract propertyName(Ljava/lang/String;)V
.end method

.method public abstract propertyParamType(Ljava/lang/String;)V
.end method

.method public abstract propertyParamValue(Ljava/lang/String;)V
.end method

.method public abstract propertyValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract startEntry()V
.end method

.method public abstract startProperty()V
.end method

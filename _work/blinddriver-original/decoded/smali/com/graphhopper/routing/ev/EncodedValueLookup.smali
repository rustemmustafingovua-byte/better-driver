.class public interface abstract Lcom/graphhopper/routing/ev/EncodedValueLookup;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
.end method

.method public abstract getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;
.end method

.method public abstract getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getEncodedValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getIntEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/IntEncodedValue;
.end method

.method public abstract getStringEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/StringEncodedValue;
.end method

.method public abstract hasEncodedValue(Ljava/lang/String;)Z
.end method

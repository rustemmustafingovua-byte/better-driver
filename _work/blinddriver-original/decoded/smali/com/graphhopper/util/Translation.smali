.class public interface abstract Lcom/graphhopper/util/Translation;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public varargs abstract tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

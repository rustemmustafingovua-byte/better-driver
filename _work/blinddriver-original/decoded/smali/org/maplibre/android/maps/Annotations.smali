.class interface abstract Lorg/maplibre/android/maps/Annotations;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract obtainAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract obtainBy(J)Lorg/maplibre/android/annotations/Annotation;
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeBy(J)V
.end method

.method public abstract removeBy(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeBy(Lorg/maplibre/android/annotations/Annotation;)V
.end method

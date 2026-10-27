.class public final Lz7/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lw7/u;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lw7/u;I)V
    .locals 0

    iput p3, p0, Lz7/r;->l:I

    iput-object p1, p0, Lz7/r;->m:Ljava/lang/Object;

    iput-object p2, p0, Lz7/r;->n:Lw7/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 0

    iget p1, p0, Lz7/r;->l:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz7/r;->m:Ljava/lang/Object;

    check-cast p1, Ld8/a;

    invoke-virtual {p2, p1}, Ld8/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    check-cast p0, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p1, p2, Ld8/a;->a:Ljava/lang/Class;

    iget-object p2, p0, Lz7/r;->m:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance p2, Lz7/a;

    invoke-direct {p2, p0, p1}, Lz7/a;-><init>(Lz7/r;Ljava/lang/Class;)V

    move-object p0, p2

    :goto_1
    return-object p0

    :pswitch_1
    iget-object p1, p2, Ld8/a;->a:Ljava/lang/Class;

    iget-object p2, p0, Lz7/r;->m:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lz7/r;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz7/r;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz7/r;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

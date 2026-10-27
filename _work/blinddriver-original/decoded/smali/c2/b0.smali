.class public final Lc2/b0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public z:Li9/f;


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 1

    iget-object p0, p0, Lc2/b0;->z:Li9/f;

    new-instance v0, Lb3/a;

    invoke-direct {v0, p3, p4}, Lb3/a;-><init>(J)V

    invoke-interface {p0, p1, p2, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/s0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutModifierImpl(measureBlock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc2/b0;->z:Li9/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

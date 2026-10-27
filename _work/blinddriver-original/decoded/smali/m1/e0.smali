.class public final Lm1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/h0;


# virtual methods
.method public final a(JLb3/m;Lb3/c;)Lm1/v;
    .locals 0

    new-instance p0, Lm1/b0;

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lm1/b0;-><init>(Ll1/c;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "RectangleShape"

    return-object p0
.end method

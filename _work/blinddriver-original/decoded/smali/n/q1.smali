.class public interface abstract Ln/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Ln/p;Ln/p;Ln/p;)J
.end method

.method public h(Ln/p;Ln/p;Ln/p;)Ln/p;
    .locals 6

    invoke-interface {p0, p1, p2, p3}, Ln/q1;->b(Ln/p;Ln/p;Ln/p;)J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Ln/q1;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract i(JLn/p;Ln/p;Ln/p;)Ln/p;
.end method

.method public abstract p(JLn/p;Ln/p;Ln/p;)Ln/p;
.end method

.class public abstract Lr/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr/q0;

.field public static final b:Lr/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr/q0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lr/q0;-><init>(ILy8/c;I)V

    sput-object v0, Lr/r0;->a:Lr/q0;

    new-instance v0, Lr/q0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lr/q0;-><init>(ILy8/c;I)V

    sput-object v0, Lr/r0;->b:Lr/q0;

    return-void
.end method

.method public static final a(J)J
    .locals 3

    invoke-static {p0, p1}, Lb3/q;->b(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lb3/q;->b(J)F

    move-result v0

    :goto_0
    invoke-static {p0, p1}, Lb3/q;->c(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lb3/q;->c(J)F

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Lb6/g;->e(FF)J

    move-result-wide p0

    return-wide p0
.end method

.class public abstract Lm0/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lia/n;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lia/n;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lm0/j1;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lm0/i1;J)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm0/i1;->a()Lk/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lk/b0;->b(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

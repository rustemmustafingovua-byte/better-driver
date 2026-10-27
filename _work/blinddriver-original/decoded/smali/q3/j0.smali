.class public Lq3/j0;
.super Lq3/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/i0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lq3/i0;-><init>(Lq3/x0;)V

    .line 3
    iget-object p0, p1, Lq3/x0;->a:Lq3/u0;

    .line 4
    invoke-virtual {p0}, Lq3/u0;->s()Z

    return-void
.end method


# virtual methods
.method public c(Lq3/x0;)V
    .locals 0

    return-void
.end method

.method public d(ILl3/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lq3/i0;->d(ILl3/b;)V

    return-void
.end method

.class public final Lo0/f1;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/l1;


# instance fields
.field public final B:Ls/i;

.field public final C:Z

.field public final D:F

.field public final E:Lm1/q;

.field public F:Ln0/a;


# direct methods
.method public constructor <init>(Ls/i;ZFLm1/q;)V
    .locals 0

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p1, p0, Lo0/f1;->B:Ls/i;

    iput-boolean p2, p0, Lo0/f1;->C:Z

    iput p3, p0, Lo0/f1;->D:F

    iput-object p4, p0, Lo0/f1;->E:Lm1/q;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    new-instance v0, Lo0/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo0/d1;-><init>(Lo0/f1;I)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    return-void
.end method

.method public final d0()V
    .locals 2

    new-instance v0, Lo0/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo0/d1;-><init>(Lo0/f1;I)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    return-void
.end method

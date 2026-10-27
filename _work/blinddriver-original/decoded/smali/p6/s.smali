.class public abstract Lp6/s;
.super Ls5/m;
.source "SourceFile"


# instance fields
.field public final d:Lp6/s;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILp6/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls5/m;->a:I

    const/4 p1, -0x1

    iput p1, p0, Ls5/m;->b:I

    iput-object p2, p0, Lp6/s;->d:Lp6/s;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/s;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp6/s;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lp6/s;->f:Ljava/lang/Object;

    return-void
.end method

.method public abstract i()Lb6/q;
.end method

.method public abstract j()Ls5/n;
.end method

.method public abstract k()Lp6/p;
.end method

.method public abstract l()Lp6/q;
.end method

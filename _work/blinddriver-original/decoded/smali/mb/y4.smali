.class public abstract Lmb/y4;
.super Lmb/c1;
.source "SourceFile"

# interfaces
.implements Lmb/x0;
.implements Lmb/z1;


# static fields
.field public static final e:Lmb/q;


# instance fields
.field public c:Lmb/a5;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lmb/y4;->e:Lmb/q;

    return-void
.end method

.method public constructor <init>(Lhb/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    sget-object p1, Lmb/y4;->e:Lmb/q;

    iput-object p1, p0, Lmb/y4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()Lmb/y4;
    .locals 0

    return-object p0
.end method

.method public abstract E(Lmb/p7;)Ljava/lang/Object;
.end method

.method public final a(Lmb/a5;)V
    .locals 1

    new-instance v0, Lmb/x4;

    invoke-direct {v0, p1}, Lmb/x4;-><init>(Lmb/a5;)V

    iget-object p1, v0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast p1, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lorg/codehaus/janino/util/a;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Lmb/f7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/f7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lmb/j7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/j7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/g7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

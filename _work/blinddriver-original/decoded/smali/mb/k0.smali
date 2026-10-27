.class public abstract Lmb/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/a5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lmb/f0;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lmb/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/k0;->a:Ljava/lang/String;

    iput-object p2, p0, Lmb/k0;->b:[Lmb/f0;

    return-void
.end method


# virtual methods
.method public final b()Lmb/a5;
    .locals 1

    new-instance p0, Lhb/b;

    const-string v0, "A compilation unit has no enclosing scope"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract f(Lmb/d7;)Ljava/lang/Object;
.end method

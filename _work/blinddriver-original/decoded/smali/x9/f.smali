.class public final Lx9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/g;


# instance fields
.field public final l:Lx9/g;


# direct methods
.method public constructor <init>(Lx9/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/f;->l:Lx9/g;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    sget-object v1, Ly9/c;->b:Lmb/s2;

    iput-object v1, v0, Lj9/y;->m:Ljava/lang/Object;

    new-instance v1, Lx9/e;

    invoke-direct {v1, p0, v0, p1}, Lx9/e;-><init>(Lx9/f;Lj9/y;Lx9/h;)V

    iget-object p0, p0, Lx9/f;->l:Lx9/g;

    invoke-interface {p0, v1, p2}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.class public final Lc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lc/f;


# direct methods
.method public constructor <init>(Lb4/g;Lc/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/d;->a:Lc/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lc/d;->a:Lc/f;

    iget-object v0, p0, Lc/f;->a:Lb/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b0;->e(Z)V

    iget-object p0, p0, Lc/f;->b:Ld/a;

    invoke-virtual {p0, v1}, Lh4/d;->f(Z)V

    return-void
.end method

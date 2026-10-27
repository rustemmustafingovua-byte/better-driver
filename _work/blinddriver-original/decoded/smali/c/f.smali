.class public final Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb/i0;

.field public final b:Ld/a;

.field public c:Li9/a;


# direct methods
.method public constructor <init>(Lc/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/i0;

    invoke-direct {v0, p0}, Lb/i0;-><init>(Lc/f;)V

    iput-object v0, p0, Lc/f;->a:Lb/i0;

    new-instance v0, Ld/a;

    invoke-direct {v0, p0, p1}, Ld/a;-><init>(Lc/f;Lc/b;)V

    iput-object v0, p0, Lc/f;->b:Ld/a;

    return-void
.end method

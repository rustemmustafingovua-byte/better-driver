.class public final Lx/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw/m;

.field public final b:Lg5/m;

.field public c:Lk4/h;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lw/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg5/m;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lg5/m;-><init>(I)V

    iput-object v0, p0, Lx/f0;->b:Lg5/m;

    const/4 v0, -0x1

    iput v0, p0, Lx/f0;->d:I

    iput v0, p0, Lx/f0;->e:I

    iput-object p1, p0, Lx/f0;->a:Lw/m;

    return-void
.end method

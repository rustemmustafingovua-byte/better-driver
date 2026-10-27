.class public final Le2/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Lc2/m;

.field public c:[F

.field public d:[B

.field public final e:Lk/n0;

.field public final f:Lk/n0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [Lc2/m;

    iput-object v1, p0, Le2/y1;->b:[Lc2/m;

    new-array v1, v0, [F

    iput-object v1, p0, Le2/y1;->c:[F

    new-array v0, v0, [B

    iput-object v0, p0, Le2/y1;->d:[B

    sget-object v0, Lk/u0;->a:Lk/n0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Le2/y1;->e:Lk/n0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Le2/y1;->f:Lk/n0;

    return-void
.end method

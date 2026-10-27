.class public final Lz5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/String;

.field public final d:[Lz5/c;


# direct methods
.method public constructor <init>(Lz5/e;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lz5/e;->i:I

    iput v0, p0, Lz5/d;->a:I

    .line 8
    iget v0, p1, Lz5/e;->l:I

    iput v0, p0, Lz5/d;->b:I

    .line 9
    iget-object v0, p1, Lz5/e;->g:[Ljava/lang/String;

    iput-object v0, p0, Lz5/d;->c:[Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lz5/e;->h:[Lz5/c;

    iput-object p1, p0, Lz5/d;->d:[Lz5/c;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lz5/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lz5/d;->a:I

    .line 3
    iput v0, p0, Lz5/d;->b:I

    .line 4
    iput-object p1, p0, Lz5/d;->c:[Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lz5/d;->d:[Lz5/c;

    return-void
.end method

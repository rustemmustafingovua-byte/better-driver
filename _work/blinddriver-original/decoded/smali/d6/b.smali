.class public final Ld6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:I

.field public final m:Ld6/o;

.field public final n:[Ld6/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lt6/f;->values()[Lt6/f;

    move-result-object v0

    array-length v0, v0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ld6/o;

    invoke-direct {v0}, Ld6/o;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld6/b;->m:Ld6/o;

    const/4 v0, 0x2

    iput v0, p0, Ld6/b;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld6/b;->n:[Ld6/o;

    return-void
.end method

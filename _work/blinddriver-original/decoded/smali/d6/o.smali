.class public final Ld6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:I


# instance fields
.field public final l:Ljava/lang/Boolean;

.field public final m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/fragment/app/t1;->g(I)[I

    move-result-object v0

    array-length v0, v0

    sput v0, Ld6/o;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Ld6/o;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Ld6/o;->m:[I

    const/4 v0, 0x0

    iput-object v0, p0, Ld6/o;->l:Ljava/lang/Boolean;

    return-void
.end method

.class public final Lx3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lwa/e;


# instance fields
.field public final a:Lx3/g;

.field public b:I

.field public final c:Lx3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwa/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lwa/e;-><init>(I)V

    sput-object v0, Lx3/p;->d:Lwa/e;

    return-void
.end method

.method public constructor <init>(Lx3/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx3/p;->b:I

    new-instance v0, Lx3/c;

    invoke-direct {v0}, Lx3/c;-><init>()V

    iput-object v0, p0, Lx3/p;->c:Lx3/c;

    iput-object p1, p0, Lx3/p;->a:Lx3/g;

    return-void
.end method

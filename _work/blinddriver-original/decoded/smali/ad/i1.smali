.class public final Lad/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/g1;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/g1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/i1;->Companion:Lad/g1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lad/i1;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lad/i1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lad/i1;->b:Ljava/lang/String;

    return-void
.end method

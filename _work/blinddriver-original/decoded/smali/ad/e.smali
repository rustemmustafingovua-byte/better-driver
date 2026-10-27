.class public final Lad/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/d;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/e;->Companion:Lad/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lad/e;->a:Ljava/util/ArrayList;

    return-void
.end method

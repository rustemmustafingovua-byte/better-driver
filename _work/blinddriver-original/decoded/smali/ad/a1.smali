.class public final Lad/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/y0;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/a1;->Companion:Lad/y0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lad/a1;->a:Ljava/util/ArrayList;

    return-void
.end method

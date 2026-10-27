.class public final Lia/v;
.super Lia/d0;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lia/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/v;->INSTANCE:Lia/v;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "null"

    return-object p0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lia/w;->a:Lia/w;

    return-object p0
.end method

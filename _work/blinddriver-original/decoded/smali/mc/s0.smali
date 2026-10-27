.class public abstract Lmc/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf8/m2;

.field public static final b:Lf8/x3;

.field public static final c:Lf8/m2;

.field public static final d:Lf8/x3;

.field public static final e:Lf8/m2;

.field public static final f:Lf8/x3;

.field public static final g:Lf8/m2;

.field public static final h:Lf8/x3;

.field public static final i:Lf8/m2;

.field public static final j:Lf8/x3;

.field public static final k:Lf8/m2;

.field public static final l:Lf8/x3;

.field public static final m:Lf8/m2;

.field public static final n:Lf8/x3;

.field public static final o:Lf8/m2;

.field public static final p:Lf8/x3;

.field public static final q:Lf8/m2;

.field public static final r:Lf8/x3;

.field public static final s:Lf8/m2;

.field public static final t:Lf8/x3;

.field public static final u:Lf8/m2;

.field public static final v:Lf8/x3;

.field public static final w:Lf8/m2;

.field public static final x:Lf8/x3;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\n!src/main/protobuf/osmformat.proto\u0012\u0006OSMPBF\"\u0087\u0002\n\u000bHeaderBlock\u0012 \n\u0004bbox\u0018\u0001 \u0001(\u000b2\u0012.OSMPBF.HeaderBBox\u0012\u0019\n\u0011required_features\u0018\u0004 \u0003(\t\u0012\u0019\n\u0011optional_features\u0018\u0005 \u0003(\t\u0012\u0016\n\u000ewritingprogram\u0018\u0010 \u0001(\t\u0012\u000e\n\u0006source\u0018\u0011 \u0001(\t\u0012%\n\u001dosmosis_replication_timestamp\u0018  \u0001(\u0003\u0012+\n#osmosis_replication_sequence_number\u0018! \u0001(\u0003\u0012$\n\u001cosmosis_replication_base_url\u0018\" \u0001(\t\"F\n\nHeaderBBox\u0012\u000c\n\u0004left\u0018\u0001 \u0002(\u0012\u0012\r\n\u0005right\u0018\u0002 \u0002(\u0012\u0012\u000b\n\u0003top\u0018\u0003 \u0002(\u0012\u0012\u000e\n\u0006bottom\u0018\u0004 \u0002(\u0012\"\u00d2\u0001\n\u000ePrimitiveBlock\u0012(\n\u000bstringtable\u0018\u0001 \u0002(\u000b2\u0013.OSMPBF.StringTable\u0012.\n\u000eprimitivegroup\u0018\u0002 \u0003(\u000b2\u0016.OSMPBF.PrimitiveGroup\u0012\u0018\n\u000bgranularity\u0018\u0011 \u0001(\u0005:\u0003100\u0012\u0015\n\nlat_offset\u0018\u0013 \u0001(\u0003:\u00010\u0012\u0015\n\nlon_offset\u0018\u0014 \u0001(\u0003:\u00010\u0012\u001e\n\u0010date_granularity\u0018\u0012 \u0001(\u0005:\u00041000\"\u00b7\u0001\n\u000ePrimitiveGroup\u0012\u001b\n\u0005nodes\u0018\u0001 \u0003(\u000b2\u000c.OSMPBF.Node\u0012!\n\u0005dense\u0018\u0002 \u0001(\u000b2\u0012.OSMPBF.DenseNodes\u0012\u0019\n\u0004ways\u0018\u0003 \u0003(\u000b2\u000b.OSMPBF.Way\u0012#\n\trelations\u0018\u0004 \u0003(\u000b2\u0010.OSMPBF.Relation\u0012%\n\nchangesets\u0018\u0005 \u0003(\u000b2\u0011.OSMPBF.ChangeSet\"\u0018\n\u000bStringTable\u0012\t\n\u0001s\u0018\u0001 \u0003(\u000c\"q\n\u0004Info\u0012\u0013\n\u0007version\u0018\u0001 \u0001(\u0005:\u0002-1\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0003\u0012\u0011\n\tchangeset\u0018\u0003 \u0001(\u0003\u0012\u000b\n\u0003uid\u0018\u0004 \u0001(\u0005\u0012\u0010\n\u0008user_sid\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007visible\u0018\u0006 \u0001(\u0008\"\u008a\u0001\n\tDenseInfo\u0012\u0013\n\u0007version\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0015\n\ttimestamp\u0018\u0002 \u0003(\u0012B\u0002\u0010\u0001\u0012\u0015\n\tchangeset\u0018\u0003 \u0003(\u0012B\u0002\u0010\u0001\u0012\u000f\n\u0003uid\u0018\u0004 \u0003(\u0011B\u0002\u0010\u0001\u0012\u0014\n\u0008user_sid\u0018\u0005 \u0003(\u0011B\u0002\u0010\u0001\u0012\u0013\n\u0007visible\u0018\u0006 \u0003(\u0008B\u0002\u0010\u0001\"\u0017\n\tChangeSet\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0003\"l\n\u0004Node\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0012\u0012\u0010\n\u0004keys\u0018\u0002 \u0003(\rB\u0002\u0010\u0001\u0012\u0010\n\u0004vals\u0018\u0003 \u0003(\rB\u0002\u0010\u0001\u0012\u001a\n\u0004info\u0018\u0004 \u0001(\u000b2\u000c.OSMPBF.Info\u0012\u000b\n\u0003lat\u0018\u0008 \u0002(\u0012\u0012\u000b\n\u0003lon\u0018\t \u0002(\u0012\"{\n\nDenseNodes\u0012\u000e\n\u0002id\u0018\u0001 \u0003(\u0012B\u0002\u0010\u0001\u0012$\n\tdenseinfo\u0018\u0005 \u0001(\u000b2\u0011.OSMPBF.DenseInfo\u0012\u000f\n\u0003lat\u0018\u0008 \u0003(\u0012B\u0002\u0010\u0001\u0012\u000f\n\u0003lon\u0018\t \u0003(\u0012B\u0002\u0010\u0001\u0012\u0015\n\tkeys_vals\u0018\n \u0003(\u0005B\u0002\u0010\u0001\"\u0085\u0001\n\u0003Way\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0003\u0012\u0010\n\u0004keys\u0018\u0002 \u0003(\rB\u0002\u0010\u0001\u0012\u0010\n\u0004vals\u0018\u0003 \u0003(\rB\u0002\u0010\u0001\u0012\u001a\n\u0004info\u0018\u0004 \u0001(\u000b2\u000c.OSMPBF.Info\u0012\u0010\n\u0004refs\u0018\u0008 \u0003(\u0012B\u0002\u0010\u0001\u0012\u000f\n\u0003lat\u0018\t \u0003(\u0012B\u0002\u0010\u0001\u0012\u000f\n\u0003lon\u0018\n \u0003(\u0012B\u0002\u0010\u0001\"\u00e0\u0001\n\u0008Relation\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0003\u0012\u0010\n\u0004keys\u0018\u0002 \u0003(\rB\u0002\u0010\u0001\u0012\u0010\n\u0004vals\u0018\u0003 \u0003(\rB\u0002\u0010\u0001\u0012\u001a\n\u0004info\u0018\u0004 \u0001(\u000b2\u000c.OSMPBF.Info\u0012\u0015\n\troles_sid\u0018\u0008 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0012\n\u0006memids\u0018\t \u0003(\u0012B\u0002\u0010\u0001\u0012.\n\u0005types\u0018\n \u0003(\u000e2\u001b.OSMPBF.Relation.MemberTypeB\u0002\u0010\u0001\"-\n\nMemberType\u0012\u0008\n\u0004NODE\u0010\u0000\u0012\u0007\n\u0003WAY\u0010\u0001\u0012\u000c\n\u0008RELATION\u0010\u0002B%\n#org.openstreetmap.osmosis.osmbinary"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lf8/w2;

    invoke-static {v0, v2}, Lf8/w2;->i([Ljava/lang/String;[Lf8/w2;)Lf8/w2;

    move-result-object v0

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->a:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v9, "OsmosisReplicationSequenceNumber"

    const-string v10, "OsmosisReplicationBaseUrl"

    const-string v3, "Bbox"

    const-string v4, "RequiredFeatures"

    const-string v5, "OptionalFeatures"

    const-string v6, "Writingprogram"

    const-string v7, "Source"

    const-string v8, "OsmosisReplicationTimestamp"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->b:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->c:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v3, "Top"

    const-string v4, "Bottom"

    const-string v5, "Left"

    const-string v6, "Right"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->d:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->e:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v7, "LonOffset"

    const-string v8, "DateGranularity"

    const-string v3, "Stringtable"

    const-string v4, "Primitivegroup"

    const-string v5, "Granularity"

    const-string v6, "LatOffset"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->f:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->g:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v3, "Relations"

    const-string v4, "Changesets"

    const-string v5, "Nodes"

    const-string v6, "Dense"

    const-string v7, "Ways"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->h:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->i:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v3, "S"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->j:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->k:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v7, "UserSid"

    const-string v8, "Visible"

    const-string v3, "Version"

    const-string v4, "Timestamp"

    const-string v5, "Changeset"

    const-string v6, "Uid"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->l:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->m:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v7, "UserSid"

    const-string v8, "Visible"

    const-string v3, "Version"

    const-string v4, "Timestamp"

    const-string v5, "Changeset"

    const-string v6, "Uid"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->n:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->o:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v3, "Id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->p:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->q:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v8, "Lat"

    const-string v9, "Lon"

    const-string v4, "Id"

    const-string v5, "Keys"

    const-string v6, "Vals"

    const-string v7, "Info"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->r:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->s:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v4, "Lon"

    const-string v5, "KeysVals"

    const-string v6, "Denseinfo"

    const-string v7, "Lat"

    filled-new-array {v3, v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->t:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/s0;->u:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v8, "Lat"

    const-string v9, "Lon"

    const-string v3, "Id"

    const-string v4, "Keys"

    const-string v5, "Vals"

    const-string v6, "Info"

    const-string v7, "Refs"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/s0;->v:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/m2;

    sput-object v0, Lmc/s0;->w:Lf8/m2;

    new-instance v1, Lf8/x3;

    const-string v7, "Memids"

    const-string v8, "Types"

    const-string v2, "Id"

    const-string v3, "Keys"

    const-string v4, "Vals"

    const-string v5, "Info"

    const-string v6, "RolesSid"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v1, Lmc/s0;->x:Lf8/x3;

    return-void
.end method

-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: ccd
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ROC_members`
--

DROP TABLE IF EXISTS `ROC_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROC_members` (
  `id` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `affiliation` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web_link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROC_members`
--

LOCK TABLES `ROC_members` WRITE;
/*!40000 ALTER TABLE `ROC_members` DISABLE KEYS */;
INSERT INTO `ROC_members` VALUES ('1','Nils Stein (Chair)','Professor','Leibniz Institute of Plant Genetics and Crop Plant Research, Germany','stein@ipk-gatersleben.de','https://www.ipk-gatersleben.de/en/genebank/genomics-of-genetic-resources/'),('2','Alison Bentley','Program Director','CIMMYT, Mexico','a.bentley@cgiar.org','https://www.cimmyt.org/people/alison-bentley/'),('3','Eduard Akhunov','Professor','Kansas State University, USA','eakhunov@ksu.edu','https://www.plantpath.k-state.edu/people/faculty/akhunov/'),('4','James Anderson','Professor','University of Minnesota, USA','ander319@umn.edu','https://agronomy.cfans.umn.edu/department-directory/james-anderson'),('5','Kathy Baylis','Professor','University of Illinois, USA','baylis@illinois.edu','https://baylislab.ace.illinois.edu/');
/*!40000 ALTER TABLE `ROC_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferences`
--

DROP TABLE IF EXISTS `conferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `attendees` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferences`
--

LOCK TABLES `conferences` WRITE;
/*!40000 ALTER TABLE `conferences` DISABLE KEYS */;
INSERT INTO `conferences` VALUES (4,'Vasudevan A, Cloutier S (2020) Shifting patterns of homoeologue expression bias (HEB) in synthetic hexaploid wheat (SHW) lines vis-à-vis its parental (Triticum turgidum and Aegilops tauschii) genomes. Plant Biology 2020, Virtual, July 19-23, P916096 (poster)','2020-07-19','Virtual','Sylvie Cloutier'),(5,'King C (2020) From wild to wheat. Top Crop Manager. Nov 16. (https://www.topcropmanager.com/from-wild-to-wheat/)','2020-11-16','Media','Sylvie Cloutier'),(6,'Weekly newsletter sent to subcribers through Wheat Initiative. 21 weekly issues sent in reporting period. ','2021-03-26','Media','Raelene Regier');
/*!40000 ALTER TABLE `conferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `category` varchar(100) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `software` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES ('Genome annotation','Ab initio and evidence-drivable gene predictors','Augustus','Accepts expressed sequence tag (EST)-based and protein-based evidence hints. Highly accurate','http://bioinf.uni-greifswald.de/augustus/\r',1),('Genome annotation','Ab initio and evidence-drivable gene predictors','mGene','Support vector machine (SVM)-based discriminative gene predictor. Directly predicts 5\' and 3\' untranslated regions (UTRs) and poly(A) sites','http://mgene.org/\r',2),('Genome annotation','Ab initio and evidence-drivable gene predictors','SNAP','Accepts EST and protein-based evidence hints. Easily trained','http://snap.cs.berkeley.edu/\r',3),('Genome annotation','Ab initio and evidence-drivable gene predictors','FGENESH','Training files are constructed by SoftBerry and supplied to users','http://www.softberry.com/berry.phtml?topic=fgenesh_plus_plus&group=help&subgroup=pipelines',4),('Genome annotation','Ab initio and evidence-drivable gene predictors','Geneid','First published in 1992 and revised in 2000. Accepts external hints from EST and protein-based evidence','http://genome.crg.es/software/geneid/\r',5),('Genome annotation','Ab initio and evidence-drivable gene predictors','Genemark','A self-training gene finder','http://exon.gatech.edu/GeneMark/\r',6),('Genome annotation','Ab initio and evidence-drivable gene predictors','GAZE','Highly configurable gene predictor','http://www.sanger.ac.uk/science/tools/gaze\r',8),('Genome annotation','Ab initio and evidence-drivable gene predictors','GenomeScan','Extension of the popular Genscan algorithm that can use BLASTX searches to guide gene prediction','http://hollywood.mit.edu/genomescan.html',9),('Genome annotation','Ab initio and evidence-drivable gene predictors','Conrad','Discriminative gene predictor that uses conditional random fields (CRFs)','https://www5.cs.fau.de/conrad/',10),('Genome annotation','Ab initio and evidence-drivable gene predictors','Contrast','Discriminative gene predictor that uses both SVMs and CRFs','http://contra.stanford.edu/contrast/\r',11),('Genome annotation','Ab initio and evidence-drivable gene predictors','CRAIG','Discriminative gene predictor that uses CRFs','http://www.seas.upenn.edu/~strctlrn/craig.html\r',12),('Genome annotation','Ab initio and evidence-drivable gene predictors','Gnomon','Hidden Markov model (HMM) tool based on Genscan that uses EST and protein alignments to guide gene prediction','https://www.ncbi.nlm.nih.gov/genome/annotation_euk/gnomon/\r',13),('Genome annotation','Ab initio and evidence-drivable gene predictors','GeneSeqer','A tool for identifying potential exonâ€“intron structure in precursor mRNAs (pre-mRNAs) by splice site prediction and spliced alignment','http://www.plantgdb.org/cgi-bin/GeneSeqer/index.cgi\r',14),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','BLAT','Faster than BLAST but has fewer features','https://genome.ucsc.edu/FAQ/FAQblat.html\r',16),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Splign','Splice-aware tool designed to align cDNA to genomic sequence','https://www.ncbi.nlm.nih.gov/sutils/splign/splign.cgi\r',17),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Spidey','mRNA-to-DNA alignment tool that is designed to account for possible paralogous alignments','https://www.ncbi.nlm.nih.gov/spidey/\r',18),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Prosplign','Global alignment tool that uses BLAST hits to align in a splice-site- and paralogy-aware manner','https://www.ncbi.nlm.nih.gov/sutils/static/prosplign/prosplign.html\r',19),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','sim4','Splice-aware cDNA-to-DNA alignment tool','http://pbil.univ-lyon1.fr/members/duret/cours/inserm210604/exercise4/sim4.html\r',20),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Exonerate','Splice-site-aware alignment algorithm that can align both protein and EST sequences to a genome','http://www.ebi.ac.uk/about/vertebrate-genomics/software/exonerate\r',21),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Cufflinks','Extension to TopHat. Uses TopHat outputs to create transcript models','http://cole-trapnell-lab.github.io/cufflinks/\r',22),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','Trinity','High-quality de novo transcriptome assembler','https://github.com/trinityrnaseq/trinityrnaseq/wiki\r',23),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','MapSplice','Spliced aligner that does not use a model of canonical splice junction','http://www.netlab.uky.edu/p/bioinfo/MapSplice2\r',24),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','TopHat','Transcriptome aligner that aligns RNA sequencing (RNA-seq) reads to a reference genome using Bowtie to identify splice sites','https://ccb.jhu.edu/software/tophat/index.shtml\r',25),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','GSNAP','A fast short-read assembler','https://www.gvst.co.uk/gsnap.html',26),('Genome annotation','Choosers and combiners','JIGSAW','Combines evidence from alignment and ab initio gene prediction tools to produce a consensus gene model','http://www.cbcb.umd.edu/software/jigsaw/\r',27),('Genome annotation','Choosers and combiners','EVidenceModeler','Produces a consensus gene model by combining evidence from protein and transcript alignments together with ab initio predictions using weights for both abundance and the sources of the evidence','https://evidencemodeler.github.io/\r',28),('Genome annotation','Choosers and combiners','GLEAN','Tool for creating consensus gene lists by integrating gene evidence through latent class analysis','https://sourceforge.net/projects/glean-gene/\r',29),('Genome annotation','Choosers and combiners','Evigan','Probabilistic evidence combiner that use a Bayeisan network to weigh and integrate evidence from ab initio predictors, alignments and expression data to produce a consensus gene model','http://www.seas.upenn.edu/~strctlrn/evigan/evigan.html\r',30),('Genome annotation','Genome annotation pipelines','PASA','Annotation pipeline that aligns EST and protein sequences to the genome and produces evidence-driven consensus gene models','https://pasapipeline.github.io/\r',31),('Genome annotation','Genome annotation pipelines','MAKER','Annotation pipeline that uses BLAST and exonerate to align protein and EST sequences. Also accepts features from RNA-seq alignment tools (such as TopHat). Massively parallel','http://www.yandell-lab.org/downloads/maker/maker.tar.gz\r',32),('Genome annotation','Genome annotation pipelines','NCBI','The genome annotation pipeline from the US National Center for Biotechnology Information (NCBI). Uses BLAST alignments together with predictions from Gnomon and GenomeScan to produce gene models','https://www.ncbi.nlm.nih.gov/\r',33),('Genome annotation','Genome annotation pipelines','Ensembl','Ensembl\'s genome annotation pipeline. Uses species-specific and cross-species alignments to build gene models. Also annotates non-coding RNAs','https://www.ensembl.org/index.html\r',34),('Genome annotation','Genome browsers for curation','Artemis','Java-based genome browser for feature viewing and annotation. Can use binary alignment map (BAM) files as input','http://www.sanger.ac.uk/science/tools/artemis\r',35),('Genome annotation','Genome browsers for curation','Apollo','Java-based genome browser that allows the user to create and edit gene models and write their edits to a remote database','http://apollo.berkeleybop.org/\r',36),('Genome annotation','Genome browsers for curation','JBROWSE','JavaScript- and HTML-based genome browser that can be embedded into wikis for community work. Excellent for Web-based use','https://jbrowse.org/\r',37),('Genome annotation','Genome browsers for curation','IGV','Genome browser that supports BAM files and expression data','http://software.broadinstitute.org/software/igv/\r',38),('Genome annotation','EST, protein and RNA-seq aligners and assemblers','BLAST','Suite of rapid database search tools that uses Karlin–Altschul statistics','https://blast.ncbi.nlm.nih.gov/Blast.cgi',39);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(100) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `citation` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (4,'2020','Identification of new leaf rust resistance loci in wheat and wild relatives by array-based SNP genotyping and association genetics',' Fatima F, McCallum BD, Pozniak CJ, Hiebert CW, McCartney CA, Fedak G, You FM and Cloutier S (2020) Identification of New Leaf Rust Resistance Loci in Wheat and Wild Relatives by Array-Based SNP Genotyping and Association Genetics. Front. Plant Sci. 11:583738. doi: 10.3389/fpls.2020.583738','https://www.frontiersin.org/articles/10.3389/fpls.2020.583738/full'),(5,'2020','Characterization and mapping of stem rust resistance in McNair 701 winter wheat\r\n','Sharma JS, Fetch T and Hiebert CW, 2020. Characterization and mapping of stem rust resistance in McNair 701 winter wheat. Canadian Hournal of Plant Pathology, 42 (3):390-395','https://www.tandfonline.com/doi/full/10.1080/07060661.2019.1669076'),(6,'2021','Genetic analysis of oviposition deterrence to orange wheat blossom midge in spring wheat','Thambugala D, Pozniak CJ, Kumar S, Burt AJ,  Wise IL, Smith MAH, Fox SL, Costamagna AC and  McCartney CA. 2021. Genetic analysis of oviposition deterrence to orange wheat blossom midge in spring wheat. Theoretical and Applied Genetics, 134:647–660\r\n','https://link.springer.com/article/10.1007/s00122-020-03720-y'),(7,'2021','Advanced domestication: harnessing the precision of gene editing in crop breeding\r\n','Lyzenga WJ,  Pozniak CJ and Kagale S. 2021. Advanced domestication: harnessing the precision of gene editing in crop breeding. Plant Biotechnology Journal, 19(4):660-670\r\n','https://onlinelibrary.wiley.com/doi/full/10.1111/pbi.13576?af=R'),(8,'2021','Genomic Cross Prediction for Linseed improvement\r\n','You et al. 2021. Genomic Cross Prediction for Linseed improvement, In Accelerated Plant Breeding, Volume 4: Oil Crops , Gosal S.S and Wani S.H. (eds), Springer','');
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research__team`
--

DROP TABLE IF EXISTS `research__team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research__team` (
  `id` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `description_of_responsibilities` varchar(1000) DEFAULT NULL,
  `affiliation` varchar(1000) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research__team`
--

LOCK TABLES `research__team` WRITE;
/*!40000 ALTER TABLE `research__team` DISABLE KEYS */;
INSERT INTO `research__team` VALUES ('1','Curtis Pozniak','Professor','Lead','Genomics, breeding & management','University of Saskatchewan','curtis.pozniak@usask.ca','https://agbio.usask.ca/faculty-and-staff/people-pages/curtis-pozniak.php'),('2','Sylvie Cloutier','Research Scientist','Lead','Genomics, diversity & management','Ottawa Research Development Centre, Agriculture and Agri-Food Canada','sylvie.j.cloutier@agr.gc.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/ontario/ottawa-research-and-development-centre/scientific-staff-and-expertise/cloutier-sylvie-phd/?id=1181934304370'),('3','Frank M You','Research Scientist','Co-investigator','Bioinformatics & data management','Ottawa Research Development Centre, Agriculture and Agri-Food Canada','frank.you@canada.ca','https://profils-profiles.science.gc.ca/en/profile/frank-you'),('4','Sean Walkowiak','Research Scientist','Co-investigator','Bioinformatics NGS data',' Canadian Grain Commission','',''),('5','Steve Robinson','Research Scientist','Co-investigator','Epigenetics & bioinformatics','Saskatoon Research Centre, Agriculture and Agri-Food Canada','steve.robinson@canada.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/saskatchewan/saskatoon-research-and-development-centre/scientific-staff-and-expertise/robinson-steve-phd/?id=1323282980815'),('6','Sateesh Kagale','Research Officer','Co-investigator','Gene editing & bioinformatics','National Research Council Canada','Sateesh.Kagale@nrc-cnrc.gc.ca','https://nrc.canada.ca/en/corporate/contact-us/nrc-directory-science-professionals/sateesh-kagale'),('7','Curt McCartney','Research Scientist ','Co-investigator','Gene isolation','Morden Research and Development Centre, Agriculture and Agri-Food Canada','curt.mccartney@canada.ca','https://profils-profiles.science.gc.ca/en/profile/curt-mccartney-phd'),('8','Colin Hiebert','Research Scientist','Co-investigator','Gene suppression & isolation','Morden Research and Development Centre, Agriculture and Agri-Food Canada','colin.hiebert@canada.ca','https://profils-profiles.science.gc.ca/en/profile/dr-colin-hiebert'),('9','Andrew Sharpe','Research Officer','Co-investigator','Phenomics & bioinformatics','NRC-CNRC, National Research Council Canada','andrew.sharpe@canada.ca',''),('10','Richard Cuthbert','Research Scientist','Co-investigator','Phenotyping & breeding','Swift Current Research and Development Centre','richard.cuthbert@canada.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/saskatchewan/swift-current-research-and-development-centre/scientific-staff-and-expertise/cuthbert-richard-phd/?id=1327604885496'),('11','Steve Shirtliffe','Professor','Co-investigator','High-througput phenotyping - UAV','College of Agriculture and Bioresources, University of Saskatchewan','steve.shirtliffe@usask.ca','https://agbio.usask.ca/faculty-and-staff/people-pages/steve-shirtliffe.php'),('12','Maria Antonia Henriquez','Research Scientist','Co-investigator','Phenotyping & FHB pathology','Morden Research and Development Centre, Agriculture and Agri-Food Canada','MariaAntonia.Henriquez@canada.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/manitoba/morden-research-and-development-centre/scientific-staff-and-expertise/henriquez-maria-antonia-phd/?id=1462288026748'),('13','Richard Gray','Professor','Co-investigator','Economics & GE3LS management','College of Agriculture and Bioresources, University of Saskatchewan','richard.gray@usask.ca','https://agbio.usask.ca/faculty-and-staff/people-pages/richard-gray.php#Department'),('14','Jill Hobbs','Professor','Co-investigator','Food regulation & trust','College of Agriculture and Bioresources, University of Saskatchewan','jill.hobbs@usask.ca','https://researchers.usask.ca/jill-hobbs/'),('15','Tristan Skolrud','Professor','Co-investigator','Farm level modelling','College of Agriculture and Bioresources, University of Saskatchewan','tristan.skolrud@usask.ca','https://agbio.usask.ca/faculty-and-staff/people-pages/tristan-skolrud.php'),('16','Peter Slade','Professor','Co-investigator','Policy modelling','U of S Plant Phenotyping and Imaging Research Centre','peter.slade@usask.ca','https://p2irc.usask.ca/profiles/theme-4/peter-slade%20.php'),('17','Alfons Weersink','Professor','Co-investigator','Farm level modelling','Department of Food, Agricultural and Resource Economics (FARE), University of Guelph','aweersin@uoguelph.ca','https://www.uoguelph.ca/fare/bios/f_weersink.html'),('18','Philip Pardey','Professor','Collaborator','GEMS informatics Director',' International Science and Technology Practice and Policy (InSTePP) Center, University of Minnesota','ppardey@umn.edu','https://www.apec.umn.edu/people/philip-pardey'),('19','Julian Alston','Professor','Collaborator','Policy & modelling','Agricultural and Resource Economics, University of California, Davis','julian@primal.ucdavis.edu','https://are.ucdavis.edu/people/faculty/julian-alston/'),('20','Martin Mascher','Research Scientist ?','Collaborator','Genome Assembly','IPK','mascher@ipk-gatersleben.de','https://www.ipk-gatersleben.de/en/independent-research-groups/domestication-genomics/'),('21','Brent McCallum','Research Scientist','Collaborator','Leaf rust pathology','Morden Research and Development Centre, Agriculture and Agri-Food Canada','brent.mccallum@canada.ca','https://profils-profiles.science.gc.ca/en/profile/brent-mccallum'),('22','Wayne Xu','Biology Study Leader','Collaborator','Bioinformatics','Morden Research and Development Centre, Agriculture and Agri-Food Canada','wayne.xu@canada.ca','https://www.rafburtonwoodbase.org/employee/Xu,_Wayne'),('23','Tom Fetch','Research Scientist','Collaborator','Stem rust pathology','Morden Research and Development Centre, Agriculture and Agri-Food Canada','tom.fetch@canada.ca','https://profils-profiles.science.gc.ca/en/profile/thomas-fetch'),('24','George Fedak','Research Scientist','Collaborator','Genetics of wheat relatives','Ottawa Research and Development Centre, Agriculture and Agri-Food Canada','george.fedak@canada.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/ontario/ottawa-research-and-development-centre/scientific-staff-and-expertise/fedak-george-phd/?id=1181937112690'),('25','Matthew Moscou','Group Leader?','Collaborator','Bioinformatics & plant immunity','The Sainsbury Laboratory','matthew.moscou@tsl.ac.uk','http://www.tsl.ac.uk/staff/matthew-moscou/'),('26','Wolfgang Spielmeyer','Professor?','Collaborator','Genetic &, gene isolation','University of Tasmania',' Wolfgang.Spielmeyer@csiro.au',''),('27','Reem Aboukhaddour','Research Scientist','Collaborator','Stripe rust pathology','Lethbridge Research and Development Centre, Agriculture and Agri-Food Canada','reem.aboukhaddour@canada.ca','https://www.agr.gc.ca/eng/scientific-collaboration-and-research-in-agriculture/agriculture-and-agri-food-research-centres-and-collections/alberta/lethbridge-research-and-development-centre/scientific-staff-and-expertise/aboukhaddour-reem-phd/?id=1469568778101'),('28','Adam Foster','Research Officer?','Collaborator','Powdery mildew pathology','Nature Resource Canada, Quebec','','https://people.aalto.fi/adam.foster'),('29','Emma Wallington','Head of Crop Transformation','Collaborator','Gene editing','NIAB','emma.wallington@niab.com','https://www.niab.com/about/people/dr-emma-wallington'),('30','Luigi Cativelli','','Collaborator','Durum breeding & working group chair','CREA Council for Agricultural Research and Economics','cattivelli@crea.gov.it',''),('31','Julie & Ian King','','Collaborator','Sequencing of exotic germplasm','','',''),('32','Ming-Cheng Luo','Geneticist','Collaborator','Bio-Nano optical maps','Department of Plant Science, University of California, Davis','mcluo@ucdavis.edu','https://www.plantsciences.ucdavis.edu/people/mingcheng-luo'),('33','Alison Bentley','Program Director CIMMYT Global Wheat Program','Collaborator','Genotyping of exotic germplasm ','CIMMYT','',''),('34','Klaus Mayer','Professor','Collaborator','Genome Annotation',' Plant Genome and Systems Biology Group, Helmholtz Zentrum München ','ga35tiz@mytum.de','https://www.professoren.tum.de/honorarprofessoren/m/mayer-klaus');
/*!40000 ALTER TABLE `research__team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tools` (
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES ('ConservedPrimers ','High Throughput Marker/Primer Development ','A high-throughput pipeline for intron-flanking PCR primer design for SNP discovery or variation dection',NULL,3),('RJPrimers ','High Throughput Marker/Primer Development ','RJPrimers is a high-throughput software tool to identify unique repeat junction and design TE-based primers for high-throughput marker development. This tool first identifies potentially unique repeat junctions using BLAST against fully annotated repeat databases and a repeat junction finding algorithm, and then designs TE based primers using Primer3 and BatchPrimer3. Five primer design strategies of TE based PCR markers have been implemented in this tool, including RJM, RJJM, ISBP, RBIP, and IRAP. Both a web-based server and a command line based pipeline have been implemented to meet different requirements. RJPrimers takes sequences in FASTA format as input and generates several pages of primer design results, including an HTML table page and a tab-delimited text file listing all designed primers and primer properties, and a detailed primer view page for each sequence with successfully designed primers.',NULL,8),('AGSNP','Genome Analysis and SNP Discovery','An annotation-based, genome-wide SNP discovery pipeline package using NGS data for large and complex genomes without a reference genome sequence. Roche 454 shotgun reads with low genome coverage of one individual are annotated in order to distinguish single-copy sequences and repeat junctions from repetitive sequences and sequences shared by paralogous genes. Multiple genome equivalents of shotgun reads of another individual generated with SOLiD or Solexa are then mapped to the annotated Roche 454 reads to identify putative SNPs. The pipeline is suitable for SNP discovery in genomic libraries of complex genomes and does not require a reference genome sequence. The pipeline is applicable to all current NGS platforms, provided that at least one of them generates relatively long reads. This pipeline package is available upon request.','',10),('BatchPrimer3','High Throughput Marker/Primer Development','BatchPrimer3 is a comprehensive web primer design program using Primer3 core program as a major primer design engine to design different types of PCR primers and sequencing primers in a high-through manner. BatchPrimer3 allows users to design several types of primers including generic primers, hybridization oligos, SSR primers together with SSR detection, and SNP genotyping primers (including single-base extension primers, allele-specific primers, and tetra-primers for tetra-primer ARMS PCR), as well as DNA sequencing primers. A batch input of large number of sequences and a tab-delimited result output greatly facilitates rapid primer design and ordering process.','',11);
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `email` varchar(100) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES ('11111111','11111111','11111111'),('11111111111','111111111','22222222'),('1111111111111111','1111111111111111','1111111111111111'),('999999999999999','999999999999999','999999999999999'),('9999999999999999','9999999999999999','9999999999999999'),('999999999999999999','999999999999999999','999999999999999999'),('9999999999999999999','9999999999999999999','9999999999999999999'),('xu@qiii.com','agdfgfdg','11111111'),('xuyihui1999@icloud.com','qeqweeqwq','11111111');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 11:29:03
